package com.tknetwork.tunnel.core;

import android.content.Context;
import android.content.pm.PackageManager;
import android.preference.PreferenceManager;
import android.security.KeyChain;
import android.security.KeyChainException;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import app.tunnel.vpncommons.org.spongycastle.util.io.pem.PemObject;
import app.tunnel.vpncommons.org.spongycastle.util.io.pem.PemWriter;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Serializable;
import java.io.StringWriter;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import java.util.UUID;
import java.util.Vector;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public class VpnProfile implements Serializable, Cloneable {
    public static final int CURRENT_PROFILE_VERSION = 6;
    public static final int DEFAULT_MSSFIX_SIZE = 1280;
    public static final int MAXLOGLEVEL = 4;
    public static final transient long MAX_EMBED_FILE_SIZE = 2097152;
    public static final int TYPE_CERTIFICATES = 0;
    public static final int TYPE_KEYSTORE = 2;
    public static final int TYPE_PKCS12 = 1;
    public static final int TYPE_STATICKEYS = 4;
    public static final int TYPE_USERPASS = 3;
    public static final int TYPE_USERPASS_CERTIFICATES = 5;
    public static final int TYPE_USERPASS_KEYSTORE = 7;
    public static final int TYPE_USERPASS_PKCS12 = 6;
    public static final int X509_VERIFY_TLSREMOTE = 0;
    public static final int X509_VERIFY_TLSREMOTE_COMPAT_NOREMAPPING = 1;
    public static final int X509_VERIFY_TLSREMOTE_DN = 2;
    public static final int X509_VERIFY_TLSREMOTE_RDN = 3;
    public static final int X509_VERIFY_TLSREMOTE_RDN_PREFIX = 4;
    public static final boolean mIsOpenVPN22 = false;
    private static final long serialVersionUID = 7085688938959334563L;
    public String mAlias;
    public boolean mAllowLocalLAN;
    public String mCaFilename;
    public String mClientCertFilename;
    public String mClientKeyFilename;
    public Connection[] mConnections;
    public String mCrlFilename;
    public String mCustomRoutes;
    public String mExcludedRoutes;
    public String mExcludedRoutesv6;
    public String mIPv4Address;
    public String mIPv6Address;
    public long mLastUsed;
    public String mName;
    public String mPKCS12Filename;
    public String mPKCS12Password;
    private transient PrivateKey mPrivateKey;
    public String mProfileCreator;
    public String mTLSAuthFilename;
    public static final String EXTRA_PROFILEUUID = new ObfuscatedString(new long[]{1425636851194618420L, -3838262735849872168L, -5132335939512732353L, -2769839116653889198L, -4250578174614456764L}).toString();
    public static final String INLINE_TAG = new ObfuscatedString(new long[]{150825935319597577L, -5151183222899358684L, -6241063725282581296L}).toString();
    public static final String DISPLAYNAME_TAG = new ObfuscatedString(new long[]{5879070620772894187L, 5862477351489478532L}).toString();
    public static String DEFAULT_DNS1 = new ObfuscatedString(new long[]{1244124318891546176L, 7938361336413786701L}).toString();
    public static String DEFAULT_DNS2 = new ObfuscatedString(new long[]{-1338044033787595322L, 5435381375843441045L}).toString();
    public transient boolean profileDeleted = false;
    public int mAuthenticationType = 2;
    public String mTLSAuthDirection = new ObfuscatedString(new long[]{2331278519526459992L}).toString();
    public boolean mUseLzo = true;
    public boolean mUseTLSAuth = false;
    public String mDNS1 = DEFAULT_DNS1;
    public String mDNS2 = DEFAULT_DNS2;
    public boolean mOverrideDNS = false;
    public String mSearchDomain = new ObfuscatedString(new long[]{-7661546797797809417L, -832323355748544895L, -8251566310003388595L}).toString();
    public boolean mUseDefaultRoute = true;
    public boolean mUsePull = true;
    public boolean mCheckRemoteCN = true;
    public boolean mExpectTLSCert = false;
    public String mRemoteCN = new ObfuscatedString(new long[]{-3414955844468592479L}).toString();
    public String mPassword = new ObfuscatedString(new long[]{-6288888341525971347L}).toString();
    public String mUsername = new ObfuscatedString(new long[]{-1032067087987896930L}).toString();
    public boolean mRoutenopull = false;
    public boolean mUseRandomHostname = false;
    public boolean mUseFloat = false;
    public boolean mUseCustomConfig = false;
    public String mCustomConfigOptions = new ObfuscatedString(new long[]{-515003426548381502L}).toString();
    public String mVerb = new ObfuscatedString(new long[]{-3587996782591658484L, -4087424564233985811L}).toString();
    public String mCipher = new ObfuscatedString(new long[]{3586252599386194286L}).toString();
    public boolean mNobind = false;
    public boolean mUseDefaultRoutev6 = true;
    public String mCustomRoutesv6 = new ObfuscatedString(new long[]{7808692116211074585L}).toString();
    public String mKeyPassword = new ObfuscatedString(new long[]{-1615163023545626165L}).toString();
    public boolean mPersistTun = false;
    public String mConnectRetryMax = new ObfuscatedString(new long[]{7642957665954110120L, -8596013811334376519L}).toString();
    public String mConnectRetry = new ObfuscatedString(new long[]{6679414901472617883L, 6340126581559662662L}).toString();
    public String mConnectRetryMaxTime = new ObfuscatedString(new long[]{-1947495040739603965L, 5805147106769758488L}).toString();
    public boolean mUserEditable = true;
    public String mAuth = new ObfuscatedString(new long[]{7231688649189894733L}).toString();
    public int mX509AuthType = 3;
    public String mx509UsernameField = null;
    public int mMssFix = 0;
    public boolean mRemoteRandom = false;
    public HashSet<String> mAllowedAppsVpn = new HashSet<>();
    public boolean mAllowedAppsVpnAreDisallowed = true;
    public boolean mPushPeerInfo = false;
    public int mVersion = 0;
    public String mServerName = new ObfuscatedString(new long[]{-5399486255307390002L, -6412249381807651104L, 7230788775410673858L, -3969379733359991600L}).toString();
    public String mServerPort = new ObfuscatedString(new long[]{-3907263423121588694L, -4159606477213140166L}).toString();
    public boolean mUseUdp = true;
    private UUID mUuid = UUID.randomUUID();
    private int mProfileVersion = 6;

    /* loaded from: classes3.dex */
    public class NoCertReturnedException extends Exception {
        public NoCertReturnedException(String str) {
            super(str);
        }
    }

    public VpnProfile(String str) {
        this.mConnections = new Connection[0];
        this.mName = str;
        this.mConnections = r9;
        Connection[] connectionArr = {new Connection()};
        this.mLastUsed = System.currentTimeMillis();
    }

    private String cidrToIPAndNetmask(String str) {
        String[] split = str.split(new ObfuscatedString(new long[]{6798013708078663548L, 3771142306176197506L}).toString());
        if (split.length == 1) {
            split = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2415868256178287699L, -8842482249198143128L}), AbstractC0749x8313616e.m3341xc20437a5(str)).split(new ObfuscatedString(new long[]{6678903134712148244L, 5012360000094146261L}).toString());
        }
        if (split.length != 2) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(split[1]);
            if (parseInt >= 0 && parseInt <= 32) {
                long j = 4294967295 << (32 - parseInt);
                String format = String.format(Locale.ENGLISH, new ObfuscatedString(new long[]{8456315188441790071L, -2462950339743539163L, -6675915036521171538L}).toString(), Long.valueOf((13963794 & j) >> 24), Long.valueOf((75342 & j) >> 16), Long.valueOf((65280 & j) >> 8), Long.valueOf(j & 255));
                StringBuilder sb = new StringBuilder();
                sb.append(split[0]);
                return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-441284711900943839L, -2329661605122610077L}), sb, format);
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    @NonNull
    private Collection<String> getCustomRoutes(String str) {
        Vector vector = new Vector();
        if (str == null) {
            return vector;
        }
        for (String str2 : str.split(new ObfuscatedString(new long[]{-7628240876803806847L, -171995002026868972L}).toString())) {
            if (!str2.equals(new ObfuscatedString(new long[]{-7299647696705785421L}).toString())) {
                String cidrToIPAndNetmask = cidrToIPAndNetmask(str2);
                if (cidrToIPAndNetmask == null) {
                    return vector;
                }
                vector.add(cidrToIPAndNetmask);
            }
        }
        return vector;
    }

    private Collection<String> getCustomRoutesv6(String str) {
        Vector vector = new Vector();
        if (str == null) {
            return vector;
        }
        for (String str2 : str.split(new ObfuscatedString(new long[]{142853324146830109L, -2541716933570276296L}).toString())) {
            if (!str2.equals(new ObfuscatedString(new long[]{-7347377656031590804L}).toString())) {
                vector.add(str2);
            }
        }
        return vector;
    }

    public static String getDisplayName(String str) {
        return str.substring(new ObfuscatedString(new long[]{-132697089710473657L, 7671376930364000811L}).toString().length(), str.indexOf(new ObfuscatedString(new long[]{2224224485403556748L, -6127412057951868470L, 3563166580409860148L}).toString()));
    }

    public static String getEmbeddedContent(String str) {
        if (!str.contains(new ObfuscatedString(new long[]{1090076321188786537L, 6915534493554226451L, -7420877141785813021L}).toString())) {
            return str;
        }
        return str.substring(new ObfuscatedString(new long[]{-2069087750552907795L, -1333538543548814767L, 4532405216917907849L}).toString().length() + str.indexOf(new ObfuscatedString(new long[]{-7443209289157049115L, 2902596030498284883L, -3443095913336245547L}).toString()));
    }

    public static String insertFileData(String str, String str2) {
        if (str2 == null) {
            return String.format(new ObfuscatedString(new long[]{-7693044266273414878L, 8723016203653469482L}).toString(), str, new ObfuscatedString(new long[]{922389041174806185L, -4674746992810883188L, 3676915576265107881L, -6146526420127598316L, 4649768097998763460L}).toString());
        }
        if (isEmbedded(str2)) {
            return String.format(Locale.ENGLISH, new ObfuscatedString(new long[]{-7772418695535990597L, -8241048352575862784L, 6433350345889563231L}).toString(), str, getEmbeddedContent(str2), str);
        }
        return String.format(Locale.ENGLISH, new ObfuscatedString(new long[]{3285513280942391639L, 6838177057769635185L}).toString(), str, openVpnEscape(str2));
    }

    public static boolean isEmbedded(String str) {
        if (str == null) {
            return false;
        }
        if (!str.startsWith(new ObfuscatedString(new long[]{-7369916547576310613L, -3017630642462171103L, 5742144881705410910L}).toString()) && !str.startsWith(new ObfuscatedString(new long[]{-5265972312874580576L, -1069869045441398342L}).toString())) {
            return false;
        }
        return true;
    }

    private void moveOptionsToConnection() {
        this.mConnections = new Connection[1];
        Connection connection = new Connection();
        connection.mServerName = this.mServerName;
        connection.mServerPort = this.mServerPort;
        connection.mUseUdp = this.mUseUdp;
        connection.mCustomConfiguration = new ObfuscatedString(new long[]{1740448205377705952L}).toString();
        this.mConnections[0] = connection;
    }

    public static String openVpnEscape(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace(new ObfuscatedString(new long[]{2128834825257847105L, 8141027706738428300L}).toString(), new ObfuscatedString(new long[]{5340696704152439884L, 8815779041186224958L}).toString()).replace(new ObfuscatedString(new long[]{-524739207366915368L, 3406236276428409789L}).toString(), new ObfuscatedString(new long[]{7539074955394348088L, 410041704667024870L}).toString()).replace(new ObfuscatedString(new long[]{1202457251891137963L, 5486949986381843020L}).toString(), new ObfuscatedString(new long[]{3213239852769629882L, 5843703032682502516L}).toString());
        if (replace.equals(str) && !replace.contains(new ObfuscatedString(new long[]{6823913380534966311L, -8079255536294218952L}).toString()) && !replace.contains(new ObfuscatedString(new long[]{6225522873993435533L, 3700687715353165068L}).toString()) && !replace.contains(new ObfuscatedString(new long[]{-3549107757360311074L, 7111001811326938100L}).toString()) && !replace.equals(new ObfuscatedString(new long[]{-4784369950387393528L}).toString())) {
            return str;
        }
        return "\"" + replace + Typography.quote;
    }

    public void checkForRestart(final Context context) {
        int i = this.mAuthenticationType;
        if ((i == 2 || i == 7) && this.mPrivateKey == null) {
            new Thread(new Runnable() { // from class: com.tknetwork.tunnel.core.VpnProfile.1
                @Override // java.lang.Runnable
                public void run() {
                    VpnProfile.this.getKeyStoreCertificates(context);
                }
            }).start();
        }
    }

    public int checkProfile(Context context) {
        String str;
        int i = this.mAuthenticationType;
        if (i != 2 && i != 7) {
            if ((i == 0 || i == 5) && TextUtils.isEmpty(this.mCaFilename)) {
                return R.string.no_ca_cert_selected;
            }
        } else if (this.mAlias == null) {
            return R.string.no_keystore_cert_selected;
        }
        if (this.mCheckRemoteCN && this.mX509AuthType == 0) {
            return R.string.deprecated_tls_remote;
        }
        if ((this.mUsePull && this.mAuthenticationType != 4) || ((str = this.mIPv4Address) != null && cidrToIPAndNetmask(str) != null)) {
            if (!this.mUseDefaultRoute) {
                if (!TextUtils.isEmpty(this.mCustomRoutes) && getCustomRoutes(this.mCustomRoutes).size() == 0) {
                    return R.string.custom_route_format_error;
                }
                if (!TextUtils.isEmpty(this.mExcludedRoutes) && getCustomRoutes(this.mExcludedRoutes).size() == 0) {
                    return R.string.custom_route_format_error;
                }
            }
            if (this.mUseTLSAuth && TextUtils.isEmpty(this.mTLSAuthFilename)) {
                return R.string.missing_tlsauth;
            }
            int i2 = this.mAuthenticationType;
            if ((i2 != 5 && i2 != 0) || (!TextUtils.isEmpty(this.mClientCertFilename) && !TextUtils.isEmpty(this.mClientKeyFilename))) {
                int i3 = this.mAuthenticationType;
                if ((i3 == 0 || i3 == 5) && TextUtils.isEmpty(this.mCaFilename)) {
                    return R.string.missing_ca_certificate;
                }
                boolean z = true;
                for (Connection connection : this.mConnections) {
                    if (connection.mEnabled) {
                        z = false;
                    }
                }
                if (z) {
                    return R.string.remote_no_server_selected;
                }
                return R.string.no_error_found;
            }
            return R.string.missing_certificates;
        }
        return R.string.ipv4_format_error;
    }

    public void clearDefaults() {
        this.mServerName = new ObfuscatedString(new long[]{-5035432763214745905L, -4697078950171672413L}).toString();
        this.mUsePull = false;
        this.mUseLzo = false;
        this.mUseDefaultRoute = false;
        this.mUseDefaultRoutev6 = false;
        this.mExpectTLSCert = false;
        this.mCheckRemoteCN = false;
        this.mPersistTun = false;
        this.mAllowLocalLAN = true;
        this.mPushPeerInfo = false;
        this.mMssFix = 0;
    }

    public VpnProfile copy(String str) {
        try {
            VpnProfile m1557clone = m1557clone();
            m1557clone.mName = str;
            return m1557clone;
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof VpnProfile) {
            return this.mUuid.equals(((VpnProfile) obj).mUuid);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x095d  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x098d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x09b9  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x09cf  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x09e5  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0a21  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0a4b  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0a73  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0ab9  */
    /* JADX WARN: Removed duplicated region for block: B:145:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x067f  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x06ee  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x075d  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x062e  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x07cd  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x07e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getConfigFile(Context context, boolean z) {
        boolean z2;
        int i;
        context.getCacheDir();
        String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7885183190992062693L, 315220466045798956L, 3239670290323837547L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{384377851602807063L, 5869874996810080536L, 4175510857395594023L, -8925430191231359678L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{365539795962258407L, 5542317411976681268L, 6557289875122859434L, -767111122993653757L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7398079458755387991L, -2871379459981058025L, 5588884833032716838L, 2521270665720781782L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5146572943449502445L, 5892132186639522543L, 8246545876905812092L, -7152366042211672413L, -4840785079050780870L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5816954855435908662L, -6350036705723254157L, -8977806301191877326L, -9158379527835348495L, -5239237276241552868L}), AbstractC0749x8313616e.m3341xc20437a5(new ObfuscatedString(new long[]{-8864598323153737045L}).toString()))))))))))));
        boolean z3 = this.mAuthenticationType != 4;
        if (z3 && this.mUsePull) {
            m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2881405077013725343L, 8168999635638386655L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f4));
        } else if (this.mUsePull) {
            m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8738686929460707285L, 6123476915370853585L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f4));
        } else if (z3) {
            m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5838765872671922943L, 7378807040761727030L, 465151341524979053L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f4));
        }
        String m3332x9d12c1f42 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3993087379745637496L, 885238563786574877L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f4));
        if (this.mConnectRetryMax == null) {
            this.mConnectRetryMax = new ObfuscatedString(new long[]{5155067399286815633L, -2560548363278717108L}).toString();
        }
        if (!this.mConnectRetryMax.equals(new ObfuscatedString(new long[]{7880089753933715837L, 3993378272459434926L}).toString())) {
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f42);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{2405762070510193094L, 4944790116166700183L, -7346607770620011068L, 4087940060225981544L}).toString());
            m3341xc20437a5.append(this.mConnectRetryMax);
            m3332x9d12c1f42 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4839505736770206061L, 2156129823814430728L}), m3341xc20437a5);
        }
        if (TextUtils.isEmpty(this.mConnectRetry)) {
            this.mConnectRetry = new ObfuscatedString(new long[]{-3046766818344903888L, -729432826892474560L}).toString();
        }
        if (TextUtils.isEmpty(this.mConnectRetryMaxTime)) {
            this.mConnectRetryMaxTime = new ObfuscatedString(new long[]{6468880537511389382L, 2099278739443606108L}).toString();
        }
        StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f42);
        m3341xc20437a52.append(new ObfuscatedString(new long[]{-5865938189605436075L, 5178942542304205750L, 3873325576628494598L}).toString());
        m3341xc20437a52.append(this.mConnectRetry);
        m3341xc20437a52.append(new ObfuscatedString(new long[]{461313177960340106L, -6660054675701848160L}).toString());
        m3341xc20437a52.append(this.mConnectRetryMaxTime);
        String m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4064269601772918733L, 7294027578146977810L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1874161848974834837L, 8078545813049019783L, -1517705267380209590L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5569927222439345580L, 5866453631446921367L}), m3341xc20437a52)))));
        Connection[] connectionArr = this.mConnections;
        if (connectionArr.length == 1) {
            StringBuilder m3341xc20437a53 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
            m3341xc20437a53.append(this.mConnections[0].getConnectionBlock());
            m3332x9d12c1f43 = m3341xc20437a53.toString();
            z2 = true;
        } else {
            z2 = true;
            for (Connection connection : connectionArr) {
                z2 = z2 && connection.isOnlyRemote();
            }
            if (this.mRemoteRandom) {
                m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2219640739536275663L, -4264010914947591395L, 6906187444747758918L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43));
            }
            if (z2) {
                for (Connection connection2 : this.mConnections) {
                    if (connection2.mEnabled) {
                        StringBuilder m3341xc20437a54 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
                        m3341xc20437a54.append(connection2.getConnectionBlock());
                        m3332x9d12c1f43 = m3341xc20437a54.toString();
                    }
                }
            }
        }
        int i2 = this.mAuthenticationType;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        StringBuilder m3341xc20437a55 = AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6320721063959261937L, -2791350982772553932L, -6405354781237683440L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43)));
                        m3341xc20437a55.append(insertFileData(new ObfuscatedString(new long[]{4216412207515254591L, -7214107527272803478L}).toString(), this.mCaFilename));
                        m3332x9d12c1f43 = m3341xc20437a55.toString();
                    } else if (i2 == 5) {
                        m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6871464535481608507L, -6960343561382268509L, 661273912704879112L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43));
                    } else if (i2 == 6) {
                        m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2349732198981983084L, 6493502059908196510L, 3500703566051535040L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43));
                    } else if (i2 == 7) {
                        m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1990222374814037321L, 3057200020603327713L, 1792410091779857110L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43));
                    }
                    if (!TextUtils.isEmpty(this.mCrlFilename)) {
                        StringBuilder m3341xc20437a56 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
                        m3341xc20437a56.append(insertFileData(new ObfuscatedString(new long[]{5572748744681341015L, 4289770812998767459L, 839198245976234785L}).toString(), this.mCrlFilename));
                        m3332x9d12c1f43 = m3341xc20437a56.toString();
                    }
                    if (this.mUseLzo) {
                        m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4706428085664336570L, -3388880903735537690L, -9176266033208258746L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43));
                    }
                    if (this.mUseTLSAuth) {
                        boolean equals = this.mTLSAuthDirection.equals(new ObfuscatedString(new long[]{-1662799898633370490L, 4246438637566490623L, -3003773276572754212L}).toString());
                        if (this.mAuthenticationType == 4) {
                            StringBuilder m3341xc20437a57 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
                            m3341xc20437a57.append(insertFileData(new ObfuscatedString(new long[]{617769148559152065L, 6316003833561916190L}).toString(), this.mTLSAuthFilename));
                            m3332x9d12c1f43 = m3341xc20437a57.toString();
                        } else if (equals) {
                            StringBuilder m3341xc20437a58 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
                            m3341xc20437a58.append(insertFileData(new ObfuscatedString(new long[]{-2983899706601348895L, 2706123531295735376L, 2554614445879179405L}).toString(), this.mTLSAuthFilename));
                            m3332x9d12c1f43 = m3341xc20437a58.toString();
                        } else {
                            StringBuilder m3341xc20437a59 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
                            m3341xc20437a59.append(insertFileData(new ObfuscatedString(new long[]{-6660765079454284498L, 2338719774366423648L}).toString(), this.mTLSAuthFilename));
                            m3332x9d12c1f43 = m3341xc20437a59.toString();
                        }
                        if (!TextUtils.isEmpty(this.mTLSAuthDirection) && !equals) {
                            StringBuilder m3341xc20437a510 = AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-233456670643430312L, -2581781843514632275L, 7865028567533030399L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43)));
                            m3341xc20437a510.append(this.mTLSAuthDirection);
                            m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5378746764382588615L, 8040963979113776618L}), AbstractC0749x8313616e.m3341xc20437a5(m3341xc20437a510.toString()));
                        }
                    }
                    if (!this.mUsePull) {
                        if (!TextUtils.isEmpty(this.mIPv4Address)) {
                            StringBuilder m3341xc20437a511 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
                            m3341xc20437a511.append(new ObfuscatedString(new long[]{8402786353101347061L, -5670920210014356802L, -8247816595198025737L}).toString());
                            m3341xc20437a511.append(cidrToIPAndNetmask(this.mIPv4Address));
                            m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1058964365806543786L, 7549276908790667455L}), m3341xc20437a511);
                        }
                        if (!TextUtils.isEmpty(this.mIPv6Address)) {
                            StringBuilder m3341xc20437a512 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
                            m3341xc20437a512.append(new ObfuscatedString(new long[]{-7556715150590001483L, 1673364530985591097L, 3366221849486062729L}).toString());
                            m3341xc20437a512.append(this.mIPv6Address);
                            m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6304543154725849835L, -3290855724843996620L}), m3341xc20437a512);
                        }
                    }
                    if (this.mUsePull && this.mRoutenopull) {
                        m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3257987986797274618L, 6335477338639827217L, 6612463251522176232L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43));
                    }
                    String obfuscatedString = new ObfuscatedString(new long[]{2406653500177089160L}).toString();
                    if (this.mUseDefaultRoute) {
                        obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6616641537160083256L, -6515610300184648095L, 981186455219112733L, -2884752586668399420L, -8461103509919239170L, 5810317967753859255L}), AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString));
                    } else {
                        for (String str : getCustomRoutes(this.mCustomRoutes)) {
                            StringBuilder m3341xc20437a513 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
                            m3341xc20437a513.append(new ObfuscatedString(new long[]{7907000993065825228L, -3226397787894275694L}).toString());
                            m3341xc20437a513.append(str);
                            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2729634043051094088L, 4545119405145397849L, 5006354573182829284L}), m3341xc20437a513);
                        }
                        for (String str2 : getCustomRoutes(this.mExcludedRoutes)) {
                            StringBuilder m3341xc20437a514 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
                            m3341xc20437a514.append(new ObfuscatedString(new long[]{-939340280349149381L, -1116533965694473192L}).toString());
                            m3341xc20437a514.append(str2);
                            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{206563982707321742L, -341088401160198686L, -903469937802025967L}), m3341xc20437a514);
                        }
                    }
                    if (this.mUseDefaultRoutev6) {
                        m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1098889143635511537L, -8726500881749170204L, 8365264981140620239L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43));
                    } else {
                        for (String str3 : getCustomRoutesv6(this.mCustomRoutesv6)) {
                            StringBuilder m3341xc20437a515 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
                            m3341xc20437a515.append(new ObfuscatedString(new long[]{-5450222303588211881L, 653380926665583066L, 8382479170213523485L}).toString());
                            m3341xc20437a515.append(str3);
                            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5128011629130585478L, -6370974867146387593L}), m3341xc20437a515);
                        }
                    }
                    String m2931x34271fae = AbstractC0362x4440ab85.m2931x34271fae(m3332x9d12c1f43, obfuscatedString);
                    if (!this.mOverrideDNS || !this.mUsePull) {
                        if (!TextUtils.isEmpty(this.mDNS1)) {
                            if (this.mDNS1.contains(new ObfuscatedString(new long[]{8276357494825612300L, 2668388525051569019L}).toString())) {
                                StringBuilder m3341xc20437a516 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                m3341xc20437a516.append(new ObfuscatedString(new long[]{-7427095687826886250L, -7610966717464129188L, -1803968938465752218L, -6200324149142100781L}).toString());
                                m3341xc20437a516.append(this.mDNS1);
                                m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1583425545079904084L, 3325890014606254330L}), m3341xc20437a516);
                            } else {
                                StringBuilder m3341xc20437a517 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                m3341xc20437a517.append(new ObfuscatedString(new long[]{-7976277747493505727L, -7250435579458733296L, -4191813244277649053L}).toString());
                                m3341xc20437a517.append(this.mDNS1);
                                m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4146584379712122634L, -5070820062584112448L}), m3341xc20437a517);
                            }
                        }
                        if (!TextUtils.isEmpty(this.mDNS2)) {
                            if (this.mDNS2.contains(new ObfuscatedString(new long[]{3594255404037963569L, 6100357178586960140L}).toString())) {
                                StringBuilder m3341xc20437a518 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                m3341xc20437a518.append(new ObfuscatedString(new long[]{1912897457480100262L, 4285753443901963143L, 1480159760234760954L, -7193605698823979503L}).toString());
                                m3341xc20437a518.append(this.mDNS2);
                                m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3161432701852958432L, 7513394295864568813L}), m3341xc20437a518);
                            } else {
                                StringBuilder m3341xc20437a519 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                m3341xc20437a519.append(new ObfuscatedString(new long[]{-1849268508074796442L, -3886069997632814477L, -4569550850777303602L}).toString());
                                m3341xc20437a519.append(this.mDNS2);
                                m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4699757321216162198L, 735127618417418173L}), m3341xc20437a519);
                            }
                        }
                        if (!TextUtils.isEmpty(this.mSearchDomain)) {
                            StringBuilder m3341xc20437a520 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                            m3341xc20437a520.append(new ObfuscatedString(new long[]{-3533040637385657419L, 8778462500886796318L, -3996669160246449723L, 4111491336960715867L}).toString());
                            m3341xc20437a520.append(this.mSearchDomain);
                            m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4370326772902069931L, 7571853062760765336L}), m3341xc20437a520);
                        }
                    }
                    i = this.mMssFix;
                    if (i != 0) {
                        if (i != 1450) {
                            StringBuilder m3341xc20437a521 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                            m3341xc20437a521.append(String.format(Locale.US, new ObfuscatedString(new long[]{-2710235429640098606L, 7393116428877362030L, 8321703792474326937L}).toString(), Integer.valueOf(this.mMssFix)));
                            m2931x34271fae = m3341xc20437a521.toString();
                        } else {
                            m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3513080969267977988L, 3256575396318959064L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae));
                        }
                    }
                    if (this.mNobind) {
                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{102794031297872337L, 1639831254495035960L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae));
                    }
                    if (this.mAuthenticationType != 4) {
                        if (this.mCheckRemoteCN) {
                            String str4 = this.mRemoteCN;
                            if (str4 != null && !str4.equals(new ObfuscatedString(new long[]{-4689994313367218223L}).toString())) {
                                int i3 = this.mX509AuthType;
                                if (i3 != 0) {
                                    if (i3 == 1) {
                                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5034854479885703758L, -498972627345529791L, -7715219656870130443L, 7563162153929920519L, -8328801816756813970L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae));
                                    } else if (i3 == 2) {
                                        StringBuilder m3341xc20437a522 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                        m3341xc20437a522.append(new ObfuscatedString(new long[]{2300875802399038747L, -8742352579463156532L, -7330346233086077526L, 8314780196518638251L}).toString());
                                        m3341xc20437a522.append(openVpnEscape(this.mRemoteCN));
                                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2290937922323698114L, 3783227220962985396L}), m3341xc20437a522);
                                    } else if (i3 == 3) {
                                        StringBuilder m3341xc20437a523 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                        m3341xc20437a523.append(new ObfuscatedString(new long[]{-2328342042380387136L, -8677654932457327173L, 7126089033129761725L, 2730203909714020579L}).toString());
                                        m3341xc20437a523.append(openVpnEscape(this.mRemoteCN));
                                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7283954666888580758L, 6687624891484027689L}), m3341xc20437a523);
                                    } else if (i3 == 4) {
                                        StringBuilder m3341xc20437a524 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                        m3341xc20437a524.append(new ObfuscatedString(new long[]{654110831667496326L, 6259479272985441035L, -4748416710144305412L, 7280307091597730422L}).toString());
                                        m3341xc20437a524.append(openVpnEscape(this.mRemoteCN));
                                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5563724411243973054L, 4494248870031161336L, -5207096417362287127L}), m3341xc20437a524);
                                    }
                                }
                                StringBuilder m3341xc20437a525 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                m3341xc20437a525.append(new ObfuscatedString(new long[]{2804355121424723807L, -9037647220662538317L, 1482179119710587880L}).toString());
                                m3341xc20437a525.append(openVpnEscape(this.mRemoteCN));
                                m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1106427825988119841L, -8603798519190109811L}), m3341xc20437a525);
                            } else {
                                StringBuilder m3341xc20437a526 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                m3341xc20437a526.append(new ObfuscatedString(new long[]{-8145985811413404800L, -278689955232049892L, -9036327589532480792L, -3610323943648749192L}).toString());
                                m3341xc20437a526.append(openVpnEscape(this.mConnections[0].mServerName));
                                m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1136035361030284731L, -4836063547272360346L}), m3341xc20437a526);
                            }
                            if (!TextUtils.isEmpty(this.mx509UsernameField)) {
                                StringBuilder m3341xc20437a527 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                                m3341xc20437a527.append(new ObfuscatedString(new long[]{5027383149154834079L, -4687666559320060527L, 956231499749135648L, 8703015596151575116L}).toString());
                                m3341xc20437a527.append(openVpnEscape(this.mx509UsernameField));
                                m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5550021613931791342L, 2753472806477073182L}), m3341xc20437a527);
                            }
                        }
                        if (this.mExpectTLSCert) {
                            m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-9097749544849926212L, -2394382279460586165L, -6270269696954032622L, 2069121802737106713L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae));
                        }
                    }
                    if (!TextUtils.isEmpty(this.mCipher)) {
                        StringBuilder m3341xc20437a528 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                        m3341xc20437a528.append(new ObfuscatedString(new long[]{-655276116581914905L, -1391173034877930223L}).toString());
                        m3341xc20437a528.append(this.mCipher);
                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1130009673507080164L, 7255491287479349536L}), m3341xc20437a528);
                    }
                    if (!TextUtils.isEmpty(this.mAuth)) {
                        StringBuilder m3341xc20437a529 = AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae);
                        m3341xc20437a529.append(new ObfuscatedString(new long[]{1391904841826077864L, -7863639810163414592L}).toString());
                        m3341xc20437a529.append(this.mAuth);
                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5246169562020399907L, -3709642664534878730L}), m3341xc20437a529);
                    }
                    if (this.mUseRandomHostname) {
                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6801552218839214790L, 2241388250682323387L, 4402436980192989493L, -2721803670944568768L, 484546408758518454L, 3300379071017936721L, 4665333749953682849L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae));
                    }
                    if (this.mUseFloat) {
                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3602855930359435946L, -344274214351965729L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae));
                    }
                    if (this.mPersistTun) {
                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7506334018513427697L, 8142174571966754868L, -6259750830762127721L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2991270308375304673L, -138389513970601997L, -2331860299038968356L, 7380323892686580204L, 2116792892104822296L, -8565400248880597678L, -5538049500920102365L, -9050081812417677506L, 6410458104107437388L, -8725025095689998052L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-589017234039838817L, 2461468651838027462L, 1472751728165658781L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae))))));
                    }
                    if (this.mPushPeerInfo) {
                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8814359036251070577L, -7541204923368484077L, -4443425665833834778L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae));
                    }
                    if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean(new ObfuscatedString(new long[]{-5718433159775717652L, 2666413523520071472L, 3289657811482568336L}).toString(), true)) {
                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3178540244740425307L, -1688229944759211055L, 800733001948240414L, -2454059191763353409L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4533164326500480122L, 5292154866445953035L, -1389403526735687509L, -6167961273789890449L, 45768620768247478L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae))));
                    }
                    if (this.mUseCustomConfig) {
                        StringBuilder m3341xc20437a530 = AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-283738632457271849L, -184060064437438163L, -707587033684272220L, -6617893139537263963L, 7427454037391920858L, -4009440585970648323L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8053080390927389470L, -7473879530655861070L, -1473535335267419882L, 4985482241317585525L, 6577060629793341091L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae)))));
                        m3341xc20437a530.append(this.mCustomConfigOptions);
                        m2931x34271fae = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7250655322658567470L, -3306614621365239889L}), AbstractC0749x8313616e.m3341xc20437a5(m3341xc20437a530.toString()));
                    }
                    if (z2) {
                        return m2931x34271fae;
                    }
                    String m3332x9d12c1f44 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1701413574898427239L, 7883085199058400442L, -1268209526966457829L, -5706053732251213919L, -4223011190767701442L, 1263641294440715961L, 5381087925475132857L, 7878598120689315060L, 7835661812288595674L, 1561229999191823536L, 842551029792236144L, -6517341086385560335L, 3030903687494845484L, 7039968304035813029L, -2734927780282295481L, -6933661025888043676L}), AbstractC0749x8313616e.m3341xc20437a5(m2931x34271fae));
                    for (Connection connection3 : this.mConnections) {
                        if (connection3.mEnabled) {
                            StringBuilder m3341xc20437a531 = AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-981435248626820375L, 2323699254510878087L, -5025743301455052350L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f44)));
                            m3341xc20437a531.append(connection3.getConnectionBlock());
                            m3332x9d12c1f44 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4401099780398886238L, 6232622937299325701L, 5344655735936492142L}), AbstractC0749x8313616e.m3341xc20437a5(m3341xc20437a531.toString()));
                        }
                    }
                    return m3332x9d12c1f44;
                }
                if (!z) {
                    String[] keyStoreCertificates = getKeyStoreCertificates(context);
                    String m3332x9d12c1f45 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7820998624245138520L, -8980311482668850562L, -9049137245501282292L, 2815068941461603199L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43));
                    if (keyStoreCertificates != null) {
                        StringBuilder m3341xc20437a532 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f45);
                        m3341xc20437a532.append(new ObfuscatedString(new long[]{579927932687058090L, 6423014281056536965L}).toString());
                        m3341xc20437a532.append(keyStoreCertificates[0]);
                        String m3332x9d12c1f46 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4067370537202274063L, 4142102020187515149L}), m3341xc20437a532);
                        if (keyStoreCertificates[1] != null) {
                            StringBuilder m3341xc20437a533 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f46);
                            m3341xc20437a533.append(new ObfuscatedString(new long[]{8187978652608201977L, 545086399380541033L, -5543795729560142824L}).toString());
                            m3341xc20437a533.append(keyStoreCertificates[1]);
                            m3332x9d12c1f46 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-225763060330167639L, -1135439240946445035L, 8291126036941084492L}), m3341xc20437a533);
                        }
                        StringBuilder m3341xc20437a534 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f46);
                        m3341xc20437a534.append(new ObfuscatedString(new long[]{4059529270744487543L, 3674676664812962122L}).toString());
                        m3341xc20437a534.append(keyStoreCertificates[2]);
                        m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2971400762249291435L, -5470420740677514869L, -190627767433121081L, -6184655336843336825L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1529033913120596343L, 3864191436291231412L, -3382457688412222546L}), m3341xc20437a534)));
                    } else {
                        StringBuilder m3341xc20437a535 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f45);
                        m3341xc20437a535.append(context.getString(R.string.keychain_access));
                        m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3779274304616372574L, 9067524905939560008L}), m3341xc20437a535);
                        if (!TextUtils.isEmpty(this.mCrlFilename)) {
                        }
                        if (this.mUseLzo) {
                        }
                        if (this.mUseTLSAuth) {
                        }
                        if (!this.mUsePull) {
                        }
                        if (this.mUsePull) {
                            m3332x9d12c1f43 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3257987986797274618L, 6335477338639827217L, 6612463251522176232L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43));
                        }
                        String obfuscatedString2 = new ObfuscatedString(new long[]{2406653500177089160L}).toString();
                        if (this.mUseDefaultRoute) {
                        }
                        if (this.mUseDefaultRoutev6) {
                        }
                        String m2931x34271fae2 = AbstractC0362x4440ab85.m2931x34271fae(m3332x9d12c1f43, obfuscatedString2);
                        if (!this.mOverrideDNS) {
                        }
                        if (!TextUtils.isEmpty(this.mDNS1)) {
                        }
                        if (!TextUtils.isEmpty(this.mDNS2)) {
                        }
                        if (!TextUtils.isEmpty(this.mSearchDomain)) {
                        }
                        i = this.mMssFix;
                        if (i != 0) {
                        }
                        if (this.mNobind) {
                        }
                        if (this.mAuthenticationType != 4) {
                        }
                        if (!TextUtils.isEmpty(this.mCipher)) {
                        }
                        if (!TextUtils.isEmpty(this.mAuth)) {
                        }
                        if (this.mUseRandomHostname) {
                        }
                        if (this.mUseFloat) {
                        }
                        if (this.mPersistTun) {
                        }
                        if (this.mPushPeerInfo) {
                        }
                        if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean(new ObfuscatedString(new long[]{-5718433159775717652L, 2666413523520071472L, 3289657811482568336L}).toString(), true)) {
                        }
                        if (this.mUseCustomConfig) {
                        }
                        if (z2) {
                        }
                    }
                }
                if (!TextUtils.isEmpty(this.mCrlFilename)) {
                }
                if (this.mUseLzo) {
                }
                if (this.mUseTLSAuth) {
                }
                if (!this.mUsePull) {
                }
                if (this.mUsePull) {
                }
                String obfuscatedString22 = new ObfuscatedString(new long[]{2406653500177089160L}).toString();
                if (this.mUseDefaultRoute) {
                }
                if (this.mUseDefaultRoutev6) {
                }
                String m2931x34271fae22 = AbstractC0362x4440ab85.m2931x34271fae(m3332x9d12c1f43, obfuscatedString22);
                if (!this.mOverrideDNS) {
                }
                if (!TextUtils.isEmpty(this.mDNS1)) {
                }
                if (!TextUtils.isEmpty(this.mDNS2)) {
                }
                if (!TextUtils.isEmpty(this.mSearchDomain)) {
                }
                i = this.mMssFix;
                if (i != 0) {
                }
                if (this.mNobind) {
                }
                if (this.mAuthenticationType != 4) {
                }
                if (!TextUtils.isEmpty(this.mCipher)) {
                }
                if (!TextUtils.isEmpty(this.mAuth)) {
                }
                if (this.mUseRandomHostname) {
                }
                if (this.mUseFloat) {
                }
                if (this.mPersistTun) {
                }
                if (this.mPushPeerInfo) {
                }
                if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean(new ObfuscatedString(new long[]{-5718433159775717652L, 2666413523520071472L, 3289657811482568336L}).toString(), true)) {
                }
                if (this.mUseCustomConfig) {
                }
                if (z2) {
                }
            }
            StringBuilder m3341xc20437a536 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
            m3341xc20437a536.append(insertFileData(new ObfuscatedString(new long[]{9040062770080174520L, -5443446509293550989L}).toString(), this.mPKCS12Filename));
            m3332x9d12c1f43 = m3341xc20437a536.toString();
            if (!TextUtils.isEmpty(this.mCrlFilename)) {
            }
            if (this.mUseLzo) {
            }
            if (this.mUseTLSAuth) {
            }
            if (!this.mUsePull) {
            }
            if (this.mUsePull) {
            }
            String obfuscatedString222 = new ObfuscatedString(new long[]{2406653500177089160L}).toString();
            if (this.mUseDefaultRoute) {
            }
            if (this.mUseDefaultRoutev6) {
            }
            String m2931x34271fae222 = AbstractC0362x4440ab85.m2931x34271fae(m3332x9d12c1f43, obfuscatedString222);
            if (!this.mOverrideDNS) {
            }
            if (!TextUtils.isEmpty(this.mDNS1)) {
            }
            if (!TextUtils.isEmpty(this.mDNS2)) {
            }
            if (!TextUtils.isEmpty(this.mSearchDomain)) {
            }
            i = this.mMssFix;
            if (i != 0) {
            }
            if (this.mNobind) {
            }
            if (this.mAuthenticationType != 4) {
            }
            if (!TextUtils.isEmpty(this.mCipher)) {
            }
            if (!TextUtils.isEmpty(this.mAuth)) {
            }
            if (this.mUseRandomHostname) {
            }
            if (this.mUseFloat) {
            }
            if (this.mPersistTun) {
            }
            if (this.mPushPeerInfo) {
            }
            if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean(new ObfuscatedString(new long[]{-5718433159775717652L, 2666413523520071472L, 3289657811482568336L}).toString(), true)) {
            }
            if (this.mUseCustomConfig) {
            }
            if (z2) {
            }
        }
        StringBuilder m3341xc20437a537 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f43);
        m3341xc20437a537.append(insertFileData(new ObfuscatedString(new long[]{1951532380051444866L, -4959176315597964414L}).toString(), this.mCaFilename));
        StringBuilder m3341xc20437a538 = AbstractC0749x8313616e.m3341xc20437a5(m3341xc20437a537.toString());
        m3341xc20437a538.append(insertFileData(new ObfuscatedString(new long[]{5756483558284881936L, -6157201936443961327L}).toString(), this.mClientKeyFilename));
        StringBuilder m3341xc20437a539 = AbstractC0749x8313616e.m3341xc20437a5(m3341xc20437a538.toString());
        m3341xc20437a539.append(insertFileData(new ObfuscatedString(new long[]{-553315468961903069L, 2176540028101792867L}).toString(), this.mClientCertFilename));
        m3332x9d12c1f43 = m3341xc20437a539.toString();
        if (!TextUtils.isEmpty(this.mCrlFilename)) {
        }
        if (this.mUseLzo) {
        }
        if (this.mUseTLSAuth) {
        }
        if (!this.mUsePull) {
        }
        if (this.mUsePull) {
        }
        String obfuscatedString2222 = new ObfuscatedString(new long[]{2406653500177089160L}).toString();
        if (this.mUseDefaultRoute) {
        }
        if (this.mUseDefaultRoutev6) {
        }
        String m2931x34271fae2222 = AbstractC0362x4440ab85.m2931x34271fae(m3332x9d12c1f43, obfuscatedString2222);
        if (!this.mOverrideDNS) {
        }
        if (!TextUtils.isEmpty(this.mDNS1)) {
        }
        if (!TextUtils.isEmpty(this.mDNS2)) {
        }
        if (!TextUtils.isEmpty(this.mSearchDomain)) {
        }
        i = this.mMssFix;
        if (i != 0) {
        }
        if (this.mNobind) {
        }
        if (this.mAuthenticationType != 4) {
        }
        if (!TextUtils.isEmpty(this.mCipher)) {
        }
        if (!TextUtils.isEmpty(this.mAuth)) {
        }
        if (this.mUseRandomHostname) {
        }
        if (this.mUseFloat) {
        }
        if (this.mPersistTun) {
        }
        if (this.mPushPeerInfo) {
        }
        if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean(new ObfuscatedString(new long[]{-5718433159775717652L, 2666413523520071472L, 3289657811482568336L}).toString(), true)) {
        }
        if (this.mUseCustomConfig) {
        }
        if (z2) {
        }
    }

    public String[] getKeyStoreCertificates(Context context) {
        return getKeyStoreCertificates(context, 5);
    }

    public PrivateKey getKeystoreKey() {
        return this.mPrivateKey;
    }

    public String getName() {
        String str = this.mName;
        if (str == null) {
            return new ObfuscatedString(new long[]{-11435302006925472L, -9069819993318690039L, -2680852304926293926L}).toString();
        }
        return str;
    }

    public String getPasswordAuth() {
        String authPassword = PasswordCache.getAuthPassword(this.mUuid, true);
        if (authPassword != null) {
            return authPassword;
        }
        return this.mPassword;
    }

    public String getPasswordPrivateKey() {
        String pKCS12orCertificatePassword = PasswordCache.getPKCS12orCertificatePassword(this.mUuid, true);
        if (pKCS12orCertificatePassword != null) {
            return pKCS12orCertificatePassword;
        }
        int i = this.mAuthenticationType;
        if (i != 0) {
            if (i != 1) {
                if (i != 5) {
                    if (i != 6) {
                        return null;
                    }
                }
            }
            return this.mPKCS12Password;
        }
        return this.mKeyPassword;
    }

    public String getSignedData(String str) {
        PrivateKey keystoreKey = getKeystoreKey();
        byte[] decode = Base64.decode(str, 0);
        try {
            Cipher cipher = Cipher.getInstance(new ObfuscatedString(new long[]{-8430780301400943913L, 2150080041227214402L, -5702095831355571665L, -5198193265768266580L}).toString());
            cipher.init(1, keystoreKey);
            return Base64.encodeToString(cipher.doFinal(decode), 2);
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException unused) {
            return null;
        }
    }

    public UUID getUUID() {
        return this.mUuid;
    }

    public String getUUIDString() {
        return this.mUuid.toString();
    }

    public String getVersionEnvString(Context context) {
        String obfuscatedString = new ObfuscatedString(new long[]{5801358762905583513L, 1037164368403828705L}).toString();
        try {
            obfuscatedString = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return String.format(Locale.US, new ObfuscatedString(new long[]{-1043085038421825457L, -4759219342516791829L}).toString(), context.getPackageName(), obfuscatedString);
    }

    public boolean isUserPWAuth() {
        int i = this.mAuthenticationType;
        if (i != 3 && i != 5 && i != 6 && i != 7) {
            return false;
        }
        return true;
    }

    public int needUserPWInput(String str, String str2) {
        String str3;
        int i = this.mAuthenticationType;
        if ((i == 1 || i == 6) && (((str3 = this.mPKCS12Password) == null || str3.equals(new ObfuscatedString(new long[]{-5383876087712304302L}).toString())) && str == null)) {
            return R.string.pkcs12_file_encryption_key;
        }
        int i2 = this.mAuthenticationType;
        if ((i2 == 0 || i2 == 5) && requireTLSKeyPassword() && TextUtils.isEmpty(this.mKeyPassword) && str == null) {
            return R.string.private_key_password;
        }
        if (isUserPWAuth()) {
            if (!TextUtils.isEmpty(this.mUsername)) {
                if (TextUtils.isEmpty(this.mPassword) && str2 == null) {
                    return R.string.password;
                }
            } else {
                return R.string.password;
            }
        }
        return 0;
    }

    public boolean requireTLSKeyPassword() {
        if (TextUtils.isEmpty(this.mClientKeyFilename)) {
            return false;
        }
        String obfuscatedString = new ObfuscatedString(new long[]{-6121692109952817353L}).toString();
        if (isEmbedded(this.mClientKeyFilename)) {
            obfuscatedString = this.mClientKeyFilename;
        } else {
            char[] cArr = new char[2048];
            try {
                FileReader fileReader = new FileReader(this.mClientKeyFilename);
                for (int read = fileReader.read(cArr); read > 0; read = fileReader.read(cArr)) {
                    obfuscatedString = obfuscatedString + new String(cArr, 0, read);
                }
                fileReader.close();
            } catch (FileNotFoundException | IOException unused) {
            }
        }
        if (obfuscatedString.contains(new ObfuscatedString(new long[]{405445225197345417L, -454476556583608562L, 585988993660725987L, -9190821384314973936L}).toString()) || obfuscatedString.contains(new ObfuscatedString(new long[]{1754687462763974824L, 1011158373667500313L, -8756218276461223286L, 2484429424000468320L, 2309887185052124669L, 8347224844439533909L}).toString())) {
            return true;
        }
        return false;
    }

    public String toString() {
        return this.mName;
    }

    public void upgradeProfile() {
        int i = this.mProfileVersion;
        if (i < 2) {
            this.mAllowLocalLAN = false;
        }
        if (i < 4) {
            moveOptionsToConnection();
            this.mAllowedAppsVpnAreDisallowed = true;
        }
        if (this.mAllowedAppsVpn == null) {
            this.mAllowedAppsVpn = new HashSet<>();
        }
        if (this.mConnections == null) {
            this.mConnections = new Connection[0];
        }
        if (this.mProfileVersion < 6 && TextUtils.isEmpty(this.mProfileCreator)) {
            this.mUserEditable = true;
        }
        this.mProfileVersion = 6;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public VpnProfile m1557clone() {
        VpnProfile vpnProfile = (VpnProfile) super.clone();
        vpnProfile.mUuid = UUID.randomUUID();
        vpnProfile.mConnections = new Connection[this.mConnections.length];
        Connection[] connectionArr = this.mConnections;
        int length = connectionArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            vpnProfile.mConnections[i2] = connectionArr[i].m1555clone();
            i++;
            i2++;
        }
        vpnProfile.mAllowedAppsVpn = (HashSet) this.mAllowedAppsVpn.clone();
        return vpnProfile;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00bd A[Catch: all -> 0x0026, AssertionError -> 0x0029, CertificateException -> 0x002c, IllegalArgumentException -> 0x002f, NoCertReturnedException -> 0x0032, KeyChainException -> 0x0035, IOException -> 0x0038, InterruptedException -> 0x003b, TryCatch #2 {AssertionError -> 0x0029, blocks: (B:6:0x0009, B:8:0x0019, B:10:0x001c, B:13:0x0071, B:29:0x007a, B:31:0x008e, B:33:0x00ac, B:17:0x00b5, B:19:0x00bd, B:20:0x00e1, B:23:0x00ee, B:36:0x003e, B:37:0x0049, B:39:0x004c, B:41:0x006a, B:42:0x00f4, B:43:0x0108), top: B:5:0x0009, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized String[] getKeyStoreCertificates(Context context, int i) {
        String stringWriter;
        String stringWriter2;
        String str;
        try {
            Context applicationContext = context.getApplicationContext();
            try {
                try {
                    this.mPrivateKey = KeyChain.getPrivateKey(applicationContext, this.mAlias);
                    X509Certificate[] certificateChain = KeyChain.getCertificateChain(applicationContext, this.mAlias);
                    if (certificateChain != null) {
                        if (certificateChain.length > 1 || !TextUtils.isEmpty(this.mCaFilename)) {
                            StringWriter stringWriter3 = new StringWriter();
                            PemWriter pemWriter = new PemWriter(stringWriter3);
                            for (int i2 = 1; i2 < certificateChain.length; i2++) {
                                pemWriter.writeObject(new PemObject(new ObfuscatedString(new long[]{173517966410930487L, -8312016451973100384L, 7378671283110314856L}).toString(), certificateChain[i2].getEncoded()));
                            }
                            pemWriter.close();
                            stringWriter = stringWriter3.toString();
                        } else {
                            stringWriter = null;
                        }
                        if (!TextUtils.isEmpty(this.mCaFilename)) {
                            try {
                                Certificate[] certificatesFromFile = X509Utils.getCertificatesFromFile(this.mCaFilename);
                                StringWriter stringWriter4 = new StringWriter();
                                PemWriter pemWriter2 = new PemWriter(stringWriter4);
                                for (Certificate certificate : certificatesFromFile) {
                                    pemWriter2.writeObject(new PemObject(new ObfuscatedString(new long[]{-8515940542539360245L, -660563296825604583L, 838543403804664888L}).toString(), certificate.getEncoded()));
                                }
                                pemWriter2.close();
                                stringWriter2 = stringWriter4.toString();
                            } catch (Exception unused) {
                            }
                            StringWriter stringWriter5 = new StringWriter();
                            if (certificateChain.length >= 1) {
                                X509Certificate x509Certificate = certificateChain[0];
                                PemWriter pemWriter3 = new PemWriter(stringWriter5);
                                pemWriter3.writeObject(new PemObject(new ObfuscatedString(new long[]{5460797091931135005L, -6093548242006402243L, 1906309483708586627L}).toString(), x509Certificate.getEncoded()));
                                pemWriter3.close();
                            }
                            String stringWriter6 = stringWriter5.toString();
                            if (stringWriter2 != null) {
                                str = null;
                            } else {
                                String str2 = stringWriter;
                                stringWriter = stringWriter2;
                                str = str2;
                            }
                            return new String[]{stringWriter, str, stringWriter6};
                        }
                        stringWriter2 = null;
                        StringWriter stringWriter52 = new StringWriter();
                        if (certificateChain.length >= 1) {
                        }
                        String stringWriter62 = stringWriter52.toString();
                        if (stringWriter2 != null) {
                        }
                        return new String[]{stringWriter, str, stringWriter62};
                    }
                    throw new NoCertReturnedException(new ObfuscatedString(new long[]{6565368458285858261L, 9222034125789311924L, -4172340044242061904L, -702307209564391387L, 5647791907320571102L, 468701308840362435L}).toString());
                } catch (AssertionError unused2) {
                    if (i == 0) {
                        return null;
                    }
                    try {
                        Thread.sleep(3000L);
                    } catch (InterruptedException unused3) {
                    }
                    return getKeyStoreCertificates(applicationContext, i - 1);
                }
            } catch (KeyChainException e) {
                e = e;
                e.printStackTrace();
                return null;
            } catch (NoCertReturnedException e2) {
                e = e2;
                e.printStackTrace();
                return null;
            } catch (IOException e3) {
                e = e3;
                e.printStackTrace();
                return null;
            } catch (IllegalArgumentException e4) {
                e = e4;
                e.printStackTrace();
                return null;
            } catch (InterruptedException e5) {
                e = e5;
                e.printStackTrace();
                return null;
            } catch (CertificateException e6) {
                e = e6;
                e.printStackTrace();
                return null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
