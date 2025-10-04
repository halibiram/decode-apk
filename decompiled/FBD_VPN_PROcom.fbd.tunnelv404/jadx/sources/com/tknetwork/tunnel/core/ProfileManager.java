package com.tknetwork.tunnel.core;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public class ProfileManager {
    private static ProfileManager instance;
    private HashMap<String, VpnProfile> profiles = new HashMap<>();
    private static final String PREFS_NAME = new ObfuscatedString(new long[]{-1656334652326339915L, -5242919108432716797L}).toString();
    private static final String LAST_CONNECTED_PROFILE = new ObfuscatedString(new long[]{717949571299221915L, 3996782258834582950L, 2493818587876596708L, -2526782372658785845L}).toString();
    private static VpnProfile mLastConnectedVpn = null;
    private static VpnProfile tmpprofile = null;

    private ProfileManager() {
    }

    private static void checkInstance(Context context) {
        if (instance == null) {
            ProfileManager profileManager = new ProfileManager();
            instance = profileManager;
            profileManager.loadVPNList(context);
        }
    }

    private static VpnProfile get(String str) {
        VpnProfile vpnProfile = tmpprofile;
        if (vpnProfile != null && vpnProfile.getUUIDString().equals(str)) {
            return tmpprofile;
        }
        ProfileManager profileManager = instance;
        if (profileManager == null) {
            return null;
        }
        return profileManager.profiles.get(str);
    }

    public static VpnProfile getAlwaysOnVPN(Context context) {
        checkInstance(context);
        return get(PreferenceManager.getDefaultSharedPreferences(context).getString(new ObfuscatedString(new long[]{-1257530157957037700L, -6728985126347403121L, -4940377564918903410L}).toString(), null));
    }

    public static synchronized ProfileManager getInstance(Context context) {
        ProfileManager profileManager;
        synchronized (ProfileManager.class) {
            checkInstance(context);
            profileManager = instance;
        }
        return profileManager;
    }

    public static VpnProfile getLastConnectedProfile(Context context) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString(new ObfuscatedString(new long[]{-7982526260931807931L, 7415827498311191053L, 3689650175286427853L, 7839152318496399156L}).toString(), null);
        if (string == null) {
            return null;
        }
        return get(context, string);
    }

    public static VpnProfile getLastConnectedVpn() {
        return mLastConnectedVpn;
    }

    public static boolean isTempProfile() {
        if (mLastConnectedVpn == tmpprofile) {
            return true;
        }
        return false;
    }

    private void loadVPNList(Context context) {
        this.profiles = new HashMap<>();
        Set<String> stringSet = context.getSharedPreferences(new ObfuscatedString(new long[]{-8570171523183100750L, 4612176622061810077L}).toString(), 0).getStringSet(new ObfuscatedString(new long[]{3347663944088025185L, 7211142719318229383L}).toString(), null);
        if (stringSet == null) {
            stringSet = new HashSet<>();
        }
        Iterator<String> it = stringSet.iterator();
        while (it.hasNext()) {
            try {
                VpnProfile vpnProfile = (VpnProfile) new ObjectInputStream(context.openFileInput(it.next() + new ObfuscatedString(new long[]{7139991022016846872L, 6519148099083856938L}).toString())).readObject();
                if (vpnProfile != null && vpnProfile.mName != null && vpnProfile.getUUID() != null) {
                    vpnProfile.upgradeProfile();
                    this.profiles.put(vpnProfile.getUUID().toString(), vpnProfile);
                }
            } catch (IOException | ClassNotFoundException unused) {
            }
        }
    }

    public static void setConnectedVpnProfile(Context context, VpnProfile vpnProfile) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putString(new ObfuscatedString(new long[]{-6926070504057857344L, 5204939146220944942L, -8805673164355614314L, -7137475380319234765L}).toString(), vpnProfile.getUUIDString());
        edit.apply();
        mLastConnectedVpn = vpnProfile;
    }

    public static void setConntectedVpnProfileDisconnected(Context context) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putString(new ObfuscatedString(new long[]{-6689189717819548268L, 1697283800530544475L, -8469462645640848716L, -1783103979369997514L}).toString(), null);
        edit.apply();
    }

    public static void setTemporaryProfile(VpnProfile vpnProfile) {
        tmpprofile = vpnProfile;
    }

    public static void updateLRU(Context context, VpnProfile vpnProfile) {
        vpnProfile.mLastUsed = System.currentTimeMillis();
        getInstance(context).saveProfile(context, vpnProfile, false);
    }

    public void addProfile(VpnProfile vpnProfile) {
        this.profiles.put(vpnProfile.getUUID().toString(), vpnProfile);
    }

    public VpnProfile getProfileByName(String str) {
        for (VpnProfile vpnProfile : this.profiles.values()) {
            if (vpnProfile.getName().equals(str)) {
                return vpnProfile;
            }
        }
        return null;
    }

    public Collection<VpnProfile> getProfiles() {
        return this.profiles.values();
    }

    public void removeProfile(Context context, VpnProfile vpnProfile) {
        String uuid = vpnProfile.getUUID().toString();
        this.profiles.remove(uuid);
        saveProfileList(context);
        context.deleteFile(uuid + new ObfuscatedString(new long[]{1164007105242537679L, 6302311478848829247L}).toString());
        if (mLastConnectedVpn == vpnProfile) {
            mLastConnectedVpn = null;
        }
    }

    public void saveProfile(Context context, VpnProfile vpnProfile) {
        saveProfile(context, vpnProfile, true);
    }

    public void saveProfileList(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(new ObfuscatedString(new long[]{-7072504572092242525L, -3636662312486565026L}).toString(), 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putStringSet(new ObfuscatedString(new long[]{7886943287969477352L, -8386762407453906640L}).toString(), this.profiles.keySet());
        edit.putInt(new ObfuscatedString(new long[]{7839666834704888271L, -6577799507879438042L}).toString(), sharedPreferences.getInt(new ObfuscatedString(new long[]{1561546783854825471L, -7596357274853847624L}).toString(), 0) + 1);
        edit.apply();
    }

    private void saveProfile(Context context, VpnProfile vpnProfile, boolean z) {
        if (z) {
            vpnProfile.mVersion++;
        }
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(context.openFileOutput(vpnProfile.getUUID().toString() + new ObfuscatedString(new long[]{-3176736869776542106L, 585997277167628490L}).toString(), 0));
            objectOutputStream.writeObject(vpnProfile);
            objectOutputStream.flush();
            objectOutputStream.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static VpnProfile get(Context context, String str) {
        return get(context, str, 0, 10);
    }

    public static VpnProfile get(Context context, String str, int i, int i2) {
        checkInstance(context);
        VpnProfile vpnProfile = get(str);
        int i3 = 0;
        while (true) {
            if (vpnProfile != null && vpnProfile.mVersion >= i) {
                break;
            }
            int i4 = i3 + 1;
            if (i3 >= i2) {
                break;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException unused) {
            }
            instance.loadVPNList(context);
            vpnProfile = get(str);
            i3 = i4;
        }
        return vpnProfile;
    }
}
