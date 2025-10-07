package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public class CommonStatusCodes {
    public static final int API_NOT_CONNECTED = 17;
    public static final int CANCELED = 16;
    public static final int CONNECTION_SUSPENDED_DURING_CALL = 20;
    public static final int DEVELOPER_ERROR = 10;
    public static final int ERROR = 13;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 14;
    public static final int INVALID_ACCOUNT = 5;
    public static final int NETWORK_ERROR = 7;
    public static final int RECONNECTION_TIMED_OUT = 22;
    public static final int RECONNECTION_TIMED_OUT_DURING_UPDATE = 21;
    public static final int REMOTE_EXCEPTION = 19;
    public static final int RESOLUTION_REQUIRED = 6;

    @Deprecated
    public static final int SERVICE_DISABLED = 3;

    @Deprecated
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int SUCCESS_CACHE = -1;
    public static final int TIMEOUT = 15;

    @KeepForSdk
    public CommonStatusCodes() {
    }

    @NonNull
    public static String getStatusCodeString(int i) {
        switch (i) {
            case -1:
                return new ObfuscatedString(new long[]{-2090612133879782398L, 852946048274419435L, -2205161884391622674L}).toString();
            case 0:
                return new ObfuscatedString(new long[]{-4566740932261118272L, -7691364597863649781L}).toString();
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                return AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4240283263615654559L, 7301616719885165023L, -9058823912858316730L, 3698294427394224426L}), new StringBuilder(), i);
            case 2:
                return new ObfuscatedString(new long[]{5146172331221468836L, -596290933359212830L, 4444525126217986150L, 992262619046968359L, 5129694966085408806L}).toString();
            case 3:
                return new ObfuscatedString(new long[]{-5094638638316841337L, -8268814053881850503L, 1520902681478773896L}).toString();
            case 4:
                return new ObfuscatedString(new long[]{5556791947319229720L, 2909523131637660156L, 433409405213686147L}).toString();
            case 5:
                return new ObfuscatedString(new long[]{5165418584491640058L, 4722137539222615816L, -3943676656208858871L}).toString();
            case 6:
                return new ObfuscatedString(new long[]{8060374814929330280L, -3216335469482334129L, -6817740904269939020L, -9082917508821568585L}).toString();
            case 7:
                return new ObfuscatedString(new long[]{-7664526828655960874L, -3437163513778978521L, -2915022056196784753L}).toString();
            case 8:
                return new ObfuscatedString(new long[]{744732359112016561L, 5062797706956353563L, -7981707246673024926L}).toString();
            case 10:
                return new ObfuscatedString(new long[]{-997603453310361031L, -4146589613826231968L, -9120164408308091639L}).toString();
            case 13:
                return new ObfuscatedString(new long[]{-2967368636136276665L, -2301268093299580604L}).toString();
            case 14:
                return new ObfuscatedString(new long[]{-3871305894194998905L, 3814492955940023594L, 1027947743998242549L}).toString();
            case 15:
                return new ObfuscatedString(new long[]{1641483599937038745L, 3453432780373764896L}).toString();
            case 16:
                return new ObfuscatedString(new long[]{-3434132606920922808L, -2389663070075121557L}).toString();
            case 17:
                return new ObfuscatedString(new long[]{5832480336433861141L, 1845708529116746422L, 2775162835733353943L, 4905970546697671912L}).toString();
            case 18:
                return new ObfuscatedString(new long[]{-7659840444819619068L, 1853742270783534610L, -285266213858868959L}).toString();
            case 19:
                return new ObfuscatedString(new long[]{-5761706077713023124L, -2102189077576560106L, 6967967613869225870L}).toString();
            case 20:
                return new ObfuscatedString(new long[]{7060030409900702726L, 6057996170305310074L, -2271041511549005040L, -1611685543830992469L, -1055856247342754343L}).toString();
            case 21:
                return new ObfuscatedString(new long[]{4564797092811602785L, -8716299738790525261L, -6501374664006370677L, 1563665371228578181L, 4287277504570683755L, -97396503476331754L}).toString();
            case 22:
                return new ObfuscatedString(new long[]{-5865820018164055372L, 8211668661174551479L, 2622895223934633987L, -8684710890012614773L}).toString();
        }
    }
}
