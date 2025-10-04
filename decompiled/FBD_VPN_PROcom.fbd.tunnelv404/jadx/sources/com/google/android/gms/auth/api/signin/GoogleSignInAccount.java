package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "GoogleSignInAccountCreator")
/* loaded from: classes2.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();

    @NonNull
    @VisibleForTesting
    public static Clock zaa = DefaultClock.getInstance();

    @SafeParcelable.VersionField(id = 1)
    final int zab;

    @SafeParcelable.Field(id = 10)
    List<Scope> zac;

    @Nullable
    @SafeParcelable.Field(getter = "getId", id = 2)
    private String zad;

    @Nullable
    @SafeParcelable.Field(getter = "getIdToken", id = 3)
    private String zae;

    @Nullable
    @SafeParcelable.Field(getter = "getEmail", id = 4)
    private String zaf;

    @Nullable
    @SafeParcelable.Field(getter = "getDisplayName", id = 5)
    private String zag;

    @Nullable
    @SafeParcelable.Field(getter = "getPhotoUrl", id = 6)
    private Uri zah;

    @Nullable
    @SafeParcelable.Field(getter = "getServerAuthCode", id = 7)
    private String zai;

    @SafeParcelable.Field(getter = "getExpirationTimeSecs", id = 8)
    private long zaj;

    @SafeParcelable.Field(getter = "getObfuscatedIdentifier", id = 9)
    private String zak;

    @Nullable
    @SafeParcelable.Field(getter = "getGivenName", id = 11)
    private String zal;

    @Nullable
    @SafeParcelable.Field(getter = "getFamilyName", id = 12)
    private String zam;
    private Set<Scope> zan = new HashSet();

    @SafeParcelable.Constructor
    public GoogleSignInAccount(@SafeParcelable.Param(id = 1) int i, @Nullable @SafeParcelable.Param(id = 2) String str, @Nullable @SafeParcelable.Param(id = 3) String str2, @Nullable @SafeParcelable.Param(id = 4) String str3, @Nullable @SafeParcelable.Param(id = 5) String str4, @Nullable @SafeParcelable.Param(id = 6) Uri uri, @Nullable @SafeParcelable.Param(id = 7) String str5, @SafeParcelable.Param(id = 8) long j, @SafeParcelable.Param(id = 9) String str6, @SafeParcelable.Param(id = 10) List<Scope> list, @Nullable @SafeParcelable.Param(id = 11) String str7, @Nullable @SafeParcelable.Param(id = 12) String str8) {
        this.zab = i;
        this.zad = str;
        this.zae = str2;
        this.zaf = str3;
        this.zag = str4;
        this.zah = uri;
        this.zai = str5;
        this.zaj = j;
        this.zak = str6;
        this.zac = list;
        this.zal = str7;
        this.zam = str8;
    }

    @NonNull
    @KeepForSdk
    public static GoogleSignInAccount createDefault() {
        return zae(new Account(new ObfuscatedString(new long[]{-3022191288109251330L, -473905698173831180L, -911205044383954978L, 8173991599260951601L}).toString(), new ObfuscatedString(new long[]{-8174179559240508602L, -4287878255575235672L, 7252746383437244964L}).toString()), new HashSet());
    }

    @NonNull
    @KeepForSdk
    public static GoogleSignInAccount fromAccount(@NonNull Account account) {
        return zae(account, new ArraySet());
    }

    @NonNull
    public static GoogleSignInAccount zaa(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l, @NonNull String str7, @NonNull Set<Scope> set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), Preconditions.checkNotEmpty(str7), new ArrayList((Collection) Preconditions.checkNotNull(set)), str5, str6);
    }

    @Nullable
    public static GoogleSignInAccount zab(@Nullable String str) {
        Uri uri;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString(new ObfuscatedString(new long[]{-4445981706093357293L, 8350690374095397146L}).toString());
        if (!TextUtils.isEmpty(optString)) {
            uri = Uri.parse(optString);
        } else {
            uri = null;
        }
        long parseLong = Long.parseLong(jSONObject.getString(new ObfuscatedString(new long[]{-223834722283009101L, 7148361965111340314L, 7496919977028608274L}).toString()));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray(new ObfuscatedString(new long[]{7904687031850913286L, 9049617446940381168L, 7747280871335916224L}).toString());
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString2 = jSONObject.optString(new ObfuscatedString(new long[]{7905092204829342154L, -1899679462604109349L}).toString());
        if (jSONObject.has(new ObfuscatedString(new long[]{8088867976262961551L, -768823513935562321L}).toString())) {
            str2 = jSONObject.optString(new ObfuscatedString(new long[]{-191523427865061910L, 8384844885623032389L}).toString());
        } else {
            str2 = null;
        }
        if (jSONObject.has(new ObfuscatedString(new long[]{-8536455414844611122L, 4810031407351925101L}).toString())) {
            str3 = jSONObject.optString(new ObfuscatedString(new long[]{-5108830190122002747L, -2098413019575243209L}).toString());
        } else {
            str3 = null;
        }
        if (jSONObject.has(new ObfuscatedString(new long[]{-4318111453094920105L, -7615023688425287621L, 187084991745178207L}).toString())) {
            str4 = jSONObject.optString(new ObfuscatedString(new long[]{-3654699576316992126L, 4645814548267187064L, -6860251239490563195L}).toString());
        } else {
            str4 = null;
        }
        if (jSONObject.has(new ObfuscatedString(new long[]{-842094227871433966L, -2875286944123202181L, 356338359509123181L}).toString())) {
            str5 = jSONObject.optString(new ObfuscatedString(new long[]{7724398336938971367L, -4399083725078484545L, -2742991877509302873L}).toString());
        } else {
            str5 = null;
        }
        if (jSONObject.has(new ObfuscatedString(new long[]{-2363407157123222171L, -5342046365505509029L, -1556153847777262262L}).toString())) {
            str6 = jSONObject.optString(new ObfuscatedString(new long[]{1287512428215687025L, -6517888246350475255L, -5153557290498930950L}).toString());
        } else {
            str6 = null;
        }
        GoogleSignInAccount zaa2 = zaa(optString2, str2, str3, str4, str5, str6, uri, Long.valueOf(parseLong), jSONObject.getString(new ObfuscatedString(new long[]{5367110613582116356L, 8154666009281205612L, -708099374191589230L, -7392473739784955018L}).toString()), hashSet);
        if (jSONObject.has(new ObfuscatedString(new long[]{-6387020890757104236L, -3903100206822049258L, -7802834876489125240L}).toString())) {
            str7 = jSONObject.optString(new ObfuscatedString(new long[]{4001141738297444259L, 3055873308705476976L, -4092568649020827681L}).toString());
        }
        zaa2.zai = str7;
        return zaa2;
    }

    private static GoogleSignInAccount zae(Account account, Set<Scope> set) {
        return zaa(null, null, account.name, null, null, null, null, 0L, account.name, set);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (!googleSignInAccount.zak.equals(this.zak) || !googleSignInAccount.getRequestedScopes().equals(getRequestedScopes())) {
            return false;
        }
        return true;
    }

    @Nullable
    public Account getAccount() {
        String str = this.zaf;
        if (str == null) {
            return null;
        }
        return new Account(str, new ObfuscatedString(new long[]{-7832339396699603460L, 7764807920812228504L, -2057360880893162538L}).toString());
    }

    @Nullable
    public String getDisplayName() {
        return this.zag;
    }

    @Nullable
    public String getEmail() {
        return this.zaf;
    }

    @Nullable
    public String getFamilyName() {
        return this.zam;
    }

    @Nullable
    public String getGivenName() {
        return this.zal;
    }

    @NonNull
    public Set<Scope> getGrantedScopes() {
        return new HashSet(this.zac);
    }

    @Nullable
    public String getId() {
        return this.zad;
    }

    @Nullable
    public String getIdToken() {
        return this.zae;
    }

    @Nullable
    public Uri getPhotoUrl() {
        return this.zah;
    }

    @NonNull
    @KeepForSdk
    public Set<Scope> getRequestedScopes() {
        HashSet hashSet = new HashSet(this.zac);
        hashSet.addAll(this.zan);
        return hashSet;
    }

    @Nullable
    public String getServerAuthCode() {
        return this.zai;
    }

    public int hashCode() {
        return getRequestedScopes().hashCode() + AbstractC0362x4440ab85.m2927x1378447b(527, 31, this.zak);
    }

    @KeepForSdk
    public boolean isExpired() {
        if (zaa.currentTimeMillis() / 1000 >= this.zaj - 300) {
            return true;
        }
        return false;
    }

    @NonNull
    @KeepForSdk
    public GoogleSignInAccount requestExtraScopes(@NonNull Scope... scopeArr) {
        if (scopeArr != null) {
            Collections.addAll(this.zan, scopeArr);
        }
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zab);
        SafeParcelWriter.writeString(parcel, 2, getId(), false);
        SafeParcelWriter.writeString(parcel, 3, getIdToken(), false);
        SafeParcelWriter.writeString(parcel, 4, getEmail(), false);
        SafeParcelWriter.writeString(parcel, 5, getDisplayName(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, getPhotoUrl(), i, false);
        SafeParcelWriter.writeString(parcel, 7, getServerAuthCode(), false);
        SafeParcelWriter.writeLong(parcel, 8, this.zaj);
        SafeParcelWriter.writeString(parcel, 9, this.zak, false);
        SafeParcelWriter.writeTypedList(parcel, 10, this.zac, false);
        SafeParcelWriter.writeString(parcel, 11, getGivenName(), false);
        SafeParcelWriter.writeString(parcel, 12, getFamilyName(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @NonNull
    public final String zac() {
        return this.zak;
    }

    @NonNull
    public final String zad() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (getId() != null) {
                jSONObject.put(new ObfuscatedString(new long[]{541532210264738389L, -9022410167964818970L}).toString(), getId());
            }
            if (getIdToken() != null) {
                jSONObject.put(new ObfuscatedString(new long[]{-3297712899904290881L, -2888125554109472436L}).toString(), getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put(new ObfuscatedString(new long[]{-4689593753410434621L, 7239545100006181333L}).toString(), getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put(new ObfuscatedString(new long[]{5537983699724393797L, 2212588359127037526L, 7981767405681868128L}).toString(), getDisplayName());
            }
            if (getGivenName() != null) {
                jSONObject.put(new ObfuscatedString(new long[]{3434688528115517653L, 289814515906005860L, -8056266431636969572L}).toString(), getGivenName());
            }
            if (getFamilyName() != null) {
                jSONObject.put(new ObfuscatedString(new long[]{-7701737904636076693L, 8006549820404255067L, -7039092338061298544L}).toString(), getFamilyName());
            }
            Uri photoUrl = getPhotoUrl();
            if (photoUrl != null) {
                jSONObject.put(new ObfuscatedString(new long[]{7709772668327294765L, 5269001042402174814L}).toString(), photoUrl.toString());
            }
            if (getServerAuthCode() != null) {
                jSONObject.put(new ObfuscatedString(new long[]{4174238762918402968L, -3047468225735047173L, -9104579300179542084L}).toString(), getServerAuthCode());
            }
            jSONObject.put(new ObfuscatedString(new long[]{-7472932510706087802L, 1415197463836432254L, -4725834922222574119L}).toString(), this.zaj);
            jSONObject.put(new ObfuscatedString(new long[]{2975088978271943089L, -7389787321413823761L, 1641517139871880267L, 7625537393172368216L}).toString(), this.zak);
            JSONArray jSONArray = new JSONArray();
            List<Scope> list = this.zac;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, new Comparator() { // from class: com.google.android.gms.auth.api.signin.zaa
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
                    return ((Scope) obj).getScopeUri().compareTo(((Scope) obj2).getScopeUri());
                }
            });
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.getScopeUri());
            }
            jSONObject.put(new ObfuscatedString(new long[]{2584962815318377831L, -3370734894510955801L, -3229692369754966398L}).toString(), jSONArray);
            jSONObject.remove(new ObfuscatedString(new long[]{5800072573983233452L, 1153277891750112196L, 3605907746914981278L}).toString());
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}
