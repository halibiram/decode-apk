package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

@KeepForSdk
/* loaded from: classes2.dex */
public abstract class BaseGmsClient<T extends IInterface> {

    @KeepForSdk
    public static final int CONNECT_STATE_CONNECTED = 4;

    @KeepForSdk
    public static final int CONNECT_STATE_DISCONNECTED = 1;

    @KeepForSdk
    public static final int CONNECT_STATE_DISCONNECTING = 5;

    @Nullable
    private volatile String zzA;

    @Nullable
    private ConnectionResult zzB;
    private boolean zzC;

    @Nullable
    private volatile zzk zzD;

    @VisibleForTesting
    zzv zza;
    final Handler zzb;

    @NonNull
    @VisibleForTesting
    protected ConnectionProgressReportCallbacks zzc;

    @NonNull
    @VisibleForTesting
    protected AtomicInteger zzd;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;

    @Nullable
    private volatile String zzk;
    private final Context zzl;
    private final Looper zzm;
    private final GmsClientSupervisor zzn;
    private final GoogleApiAvailabilityLight zzo;
    private final Object zzp;
    private final Object zzq;

    @Nullable
    @GuardedBy("serviceBrokerLock")
    private IGmsServiceBroker zzr;

    @Nullable
    @GuardedBy("lock")
    private IInterface zzs;
    private final ArrayList zzt;

    @Nullable
    @GuardedBy("lock")
    private zze zzu;

    @GuardedBy("lock")
    private int zzv;

    @Nullable
    private final BaseConnectionCallbacks zzw;

    @Nullable
    private final BaseOnConnectionFailedListener zzx;
    private final int zzy;

    @Nullable
    private final String zzz;

    @NonNull
    @KeepForSdk
    public static final String KEY_PENDING_INTENT = new ObfuscatedString(new long[]{7626273369022039011L, 8602184256106750391L, -7543834153429100107L}).toString();

    @NonNull
    @KeepForSdk
    public static final String DEFAULT_ACCOUNT = new ObfuscatedString(new long[]{-3766258425181703617L, -182993077610959351L, 769218204183319688L, -7463892069055189081L}).toString();
    private static final Feature[] zze = new Feature[0];

    @NonNull
    @KeepForSdk
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {new ObfuscatedString(new long[]{2524172415600030555L, -6462022366825688192L, -21483594399308709L}).toString(), new ObfuscatedString(new long[]{8234390550519232968L, 8727636964916259417L, -4076441421379416906L}).toString()};

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface BaseConnectionCallbacks {

        @KeepForSdk
        public static final int CAUSE_DEAD_OBJECT_EXCEPTION = 3;

        @KeepForSdk
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        @KeepForSdk
        void onConnected(@Nullable Bundle bundle);

        @KeepForSdk
        void onConnectionSuspended(int i);
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface BaseOnConnectionFailedListener {
        @KeepForSdk
        void onConnectionFailed(@NonNull ConnectionResult connectionResult);
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface ConnectionProgressReportCallbacks {
        @KeepForSdk
        void onReportServiceBinding(@NonNull ConnectionResult connectionResult);
    }

    /* loaded from: classes2.dex */
    public class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        @KeepForSdk
        public LegacyClientCallbackAdapter() {
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        public final void onReportServiceBinding(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                baseGmsClient.getRemoteService(null, baseGmsClient.getScopes());
            } else if (BaseGmsClient.this.zzx != null) {
                BaseGmsClient.this.zzx.onConnectionFailed(connectionResult);
            }
        }
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface SignOutCallbacks {
        @KeepForSdk
        void onSignOutComplete();
    }

    @KeepForSdk
    @VisibleForTesting
    public BaseGmsClient(@NonNull Context context, @NonNull Handler handler, @NonNull GmsClientSupervisor gmsClientSupervisor, @NonNull GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, @Nullable BaseConnectionCallbacks baseConnectionCallbacks, @Nullable BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{3530837580413106693L, -1963049935824889226L, 4301672648087081905L, 2050519097463058219L}).toString());
        this.zzl = context;
        Preconditions.checkNotNull(handler, new ObfuscatedString(new long[]{-7990254122944165441L, 8977289875131415042L, -1666504398475041398L, -8885448963712784863L}).toString());
        this.zzb = handler;
        this.zzm = handler.getLooper();
        Preconditions.checkNotNull(gmsClientSupervisor, new ObfuscatedString(new long[]{368845607286083308L, -4436421544881236771L, 8421446454068669915L, -8750065422361004699L, 4317759459921493380L}).toString());
        this.zzn = gmsClientSupervisor;
        Preconditions.checkNotNull(googleApiAvailabilityLight, new ObfuscatedString(new long[]{1067368808959484116L, -7089108630949807905L, 918459595171512808L, 2415767633004722656L, -7315893969386330487L, 6460268287988120974L}).toString());
        this.zzo = googleApiAvailabilityLight;
        this.zzy = i;
        this.zzw = baseConnectionCallbacks;
        this.zzx = baseOnConnectionFailedListener;
        this.zzz = null;
    }

    public static /* bridge */ /* synthetic */ void zzj(BaseGmsClient baseGmsClient, zzk zzkVar) {
        RootTelemetryConfiguration zza;
        baseGmsClient.zzD = zzkVar;
        if (baseGmsClient.usesClientTelemetry()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzkVar.zzd;
            RootTelemetryConfigManager rootTelemetryConfigManager = RootTelemetryConfigManager.getInstance();
            if (connectionTelemetryConfiguration == null) {
                zza = null;
            } else {
                zza = connectionTelemetryConfiguration.zza();
            }
            rootTelemetryConfigManager.zza(zza);
        }
    }

    public static /* bridge */ /* synthetic */ void zzk(BaseGmsClient baseGmsClient, int i) {
        int i2;
        int i3;
        synchronized (baseGmsClient.zzp) {
            i2 = baseGmsClient.zzv;
        }
        if (i2 == 3) {
            baseGmsClient.zzC = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = baseGmsClient.zzb;
        handler.sendMessage(handler.obtainMessage(i3, baseGmsClient.zzd.get(), 16));
    }

    public static /* bridge */ /* synthetic */ boolean zzn(BaseGmsClient baseGmsClient, int i, int i2, IInterface iInterface) {
        synchronized (baseGmsClient.zzp) {
            try {
                if (baseGmsClient.zzv != i) {
                    return false;
                }
                baseGmsClient.zzp(i2, iInterface);
                return true;
            } finally {
            }
        }
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException: Cannot read field "wordsInUse" because "set" is null
        	at java.base/java.util.BitSet.or(BitSet.java:943)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:759)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:838)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:711)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    public static /* bridge */ /* synthetic */ boolean zzo(com.google.android.gms.common.internal.BaseGmsClient r2) {
        /*
            boolean r0 = r2.zzC
            r1 = 0
            if (r0 == 0) goto L6
            goto L24
        L6:
            java.lang.String r0 = r2.getServiceDescriptor()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L11
            goto L24
        L11:
            java.lang.String r0 = r2.getLocalStartServiceAction()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L1c
            goto L24
        L1c:
            java.lang.String r2 = r2.getServiceDescriptor()     // Catch: java.lang.ClassNotFoundException -> L24
            java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L24
            r1 = 1
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.BaseGmsClient.zzo(com.google.android.gms.common.internal.BaseGmsClient):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void zzp(int i, @Nullable IInterface iInterface) {
        boolean z;
        boolean z2;
        zzv zzvVar;
        zzv zzvVar2;
        boolean z3 = false;
        if (i != 4) {
            z = false;
        } else {
            z = true;
        }
        if (iInterface == 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z == z2) {
            z3 = true;
        }
        Preconditions.checkArgument(z3);
        synchronized (this.zzp) {
            try {
                this.zzv = i;
                this.zzs = iInterface;
                if (i != 1) {
                    if (i != 2 && i != 3) {
                        if (i == 4) {
                            Preconditions.checkNotNull(iInterface);
                            onConnectedLocked(iInterface);
                        }
                    } else {
                        zze zzeVar = this.zzu;
                        if (zzeVar != null && (zzvVar2 = this.zza) != null) {
                            new ObfuscatedString(new long[]{7790459242313886928L, -8726054220161668824L, -749182626068995183L}).toString();
                            zzvVar2.zzb();
                            zzvVar2.zza();
                            new ObfuscatedString(new long[]{-567536522635366046L, -3578899258894202967L, 2686225987793351328L, -8156453982304998624L, 8237925629333438866L, -3341188495677034571L, 1449401996741318526L, -3741074802229630291L, -5717055445567321979L, 4094956992721429122L}).toString();
                            new ObfuscatedString(new long[]{985561759766870564L, 2844438716394251012L}).toString();
                            GmsClientSupervisor gmsClientSupervisor = this.zzn;
                            String zzb = this.zza.zzb();
                            Preconditions.checkNotNull(zzb);
                            gmsClientSupervisor.zzb(zzb, this.zza.zza(), 4225, zzeVar, zze(), this.zza.zzc());
                            this.zzd.incrementAndGet();
                        }
                        zze zzeVar2 = new zze(this, this.zzd.get());
                        this.zzu = zzeVar2;
                        if (this.zzv == 3 && getLocalStartServiceAction() != null) {
                            zzvVar = new zzv(getContext().getPackageName(), getLocalStartServiceAction(), true, 4225, false);
                        } else {
                            zzvVar = new zzv(getStartServicePackage(), getStartServiceAction(), false, 4225, getUseDynamicLookup());
                        }
                        this.zza = zzvVar;
                        if (zzvVar.zzc() && getMinApkVersion() < 17895000) {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{3571362494986344092L, 2052407266699324178L, -3800142567699376703L, 7624394412751844066L, -2342045135600802235L, 1593725676922084476L, 5845291676463763L, -4142598791669806902L, -6922033681750969748L, 1053091265250431129L, -4749423366874413634L, 5915112630109881120L, 8184127839494533426L, 3374216887936876809L, -2798347788166287863L, -8992347496726154302L, -4989090941100067700L}).toString().concat(String.valueOf(this.zza.zzb())));
                        }
                        GmsClientSupervisor gmsClientSupervisor2 = this.zzn;
                        String zzb2 = this.zza.zzb();
                        Preconditions.checkNotNull(zzb2);
                        String zza = this.zza.zza();
                        if (!gmsClientSupervisor2.zzc(new zzo(zzb2, zza, 4225, this.zza.zzc()), zzeVar2, zze(), getBindServiceExecutor())) {
                            new ObfuscatedString(new long[]{3316503058272458676L, -3569210232035488447L, 1384300311806146034L}).toString();
                            this.zza.zzb();
                            this.zza.zza();
                            new ObfuscatedString(new long[]{-4157140519589344468L, 8636774887542545556L, -8060650125675290534L, 8889171740516491734L, -5941348692131288627L}).toString();
                            new ObfuscatedString(new long[]{-2936530894567858816L, 3647291094370958373L}).toString();
                            zzl(16, null, this.zzd.get());
                        }
                    }
                } else {
                    zze zzeVar3 = this.zzu;
                    if (zzeVar3 != null) {
                        GmsClientSupervisor gmsClientSupervisor3 = this.zzn;
                        String zzb3 = this.zza.zzb();
                        Preconditions.checkNotNull(zzb3);
                        gmsClientSupervisor3.zzb(zzb3, this.zza.zza(), 4225, zzeVar3, zze(), this.zza.zzc());
                        this.zzu = null;
                    }
                }
            } finally {
            }
        }
    }

    @KeepForSdk
    public void checkAvailabilityAndConnect() {
        int isGooglePlayServicesAvailable = this.zzo.isGooglePlayServicesAvailable(this.zzl, getMinApkVersion());
        if (isGooglePlayServicesAvailable != 0) {
            zzp(1, null);
            triggerNotAvailable(new LegacyClientCallbackAdapter(), isGooglePlayServicesAvailable, null);
        } else {
            connect(new LegacyClientCallbackAdapter());
        }
    }

    @KeepForSdk
    public final void checkConnected() {
        if (isConnected()) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-3628824118856162628L, -3686320546452239173L, 3499063363725889801L, -3951168682684278186L, -3987997077866419406L, 6359220065692268474L, 1152388734716043336L, 1013048590292777193L, -7886725892697816103L, 6950562054332585707L}).toString());
        }
    }

    @KeepForSdk
    public void connect(@NonNull ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        Preconditions.checkNotNull(connectionProgressReportCallbacks, new ObfuscatedString(new long[]{-2327552581589514073L, -2168970362895866010L, -8063266212434991218L, 1795529250224866280L, -642287076530111540L, 324319716786475002L, -4670850903759468198L}).toString());
        this.zzc = connectionProgressReportCallbacks;
        zzp(2, null);
    }

    @Nullable
    @KeepForSdk
    public abstract T createServiceInterface(@NonNull IBinder iBinder);

    @KeepForSdk
    public void disconnect() {
        this.zzd.incrementAndGet();
        synchronized (this.zzt) {
            try {
                int size = this.zzt.size();
                for (int i = 0; i < size; i++) {
                    ((zzc) this.zzt.get(i)).zzf();
                }
                this.zzt.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.zzq) {
            this.zzr = null;
        }
        zzp(1, null);
    }

    @KeepForSdk
    public void dump(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
        int i;
        IInterface iInterface;
        IGmsServiceBroker iGmsServiceBroker;
        synchronized (this.zzp) {
            i = this.zzv;
            iInterface = this.zzs;
        }
        synchronized (this.zzq) {
            iGmsServiceBroker = this.zzr;
        }
        printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{-5999609071455526277L, 6938655887687868201L, 2967864733691557732L}).toString());
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            printWriter.print(new ObfuscatedString(new long[]{-8886963594458433802L, 4634969311795696194L}).toString());
                        } else {
                            printWriter.print(new ObfuscatedString(new long[]{442041044465319490L, 4504274355854793229L, -1226756704756213412L}).toString());
                        }
                    } else {
                        printWriter.print(new ObfuscatedString(new long[]{4759324493874975580L, 1765848462732864421L, -1602203832893930372L}).toString());
                    }
                } else {
                    printWriter.print(new ObfuscatedString(new long[]{4855898312171806528L, 5676214414334160568L, -8944923330128223371L}).toString());
                }
            } else {
                printWriter.print(new ObfuscatedString(new long[]{135589821462981803L, -1729904876240325013L, 7294512978864620533L, -3119192588312783880L}).toString());
            }
        } else {
            printWriter.print(new ObfuscatedString(new long[]{9219986916408585901L, 6160066288885913669L, 7314985809068369458L}).toString());
        }
        printWriter.append((CharSequence) new ObfuscatedString(new long[]{-641589097245625479L, -1182467403842482875L, 5164817715498147023L}).toString());
        if (iInterface == null) {
            printWriter.append((CharSequence) new ObfuscatedString(new long[]{5173780381346227633L, -9215367683510301250L}).toString());
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append((CharSequence) new ObfuscatedString(new long[]{2340924513292721126L, 4911769485797698530L}).toString()).append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append((CharSequence) new ObfuscatedString(new long[]{7477218065595235652L, -8566977929220701757L, 5594519182607388796L}).toString());
        if (iGmsServiceBroker == null) {
            printWriter.println(new ObfuscatedString(new long[]{3829961944003540106L, -6641189242469896139L}).toString());
        } else {
            printWriter.append((CharSequence) new ObfuscatedString(new long[]{-6709889781427226839L, -5274020907379049095L, -6200150992980579018L, -391336735943620911L}).toString()).println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(new ObfuscatedString(new long[]{8654558295643078142L, 8471096949069599223L, 6211870516247964665L, -9028961431837593902L}).toString(), Locale.US);
        if (this.zzh > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{583305580234924392L, 341809959743818037L, 138431055513753618L, -8049010134648911418L}).toString());
            long j = this.zzh;
            append.println(j + new ObfuscatedString(new long[]{5317250274467755476L, -6255036448945965984L}).toString() + simpleDateFormat.format(new Date(j)));
        }
        if (this.zzg > 0) {
            printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{-7215899353171910517L, -2040032475036588210L, -7908203301327752626L, 5314079125806078453L}).toString());
            int i2 = this.zzf;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        printWriter.append((CharSequence) String.valueOf(i2));
                    } else {
                        printWriter.append((CharSequence) new ObfuscatedString(new long[]{-622170670883205159L, 5480239384251292834L, 2783731865855611048L, 4807677870459158690L, 7473120782069958839L}).toString());
                    }
                } else {
                    printWriter.append((CharSequence) new ObfuscatedString(new long[]{7677219255145625934L, -6318105875396367061L, 2484450590878710535L, 8613743150850270428L}).toString());
                }
            } else {
                printWriter.append((CharSequence) new ObfuscatedString(new long[]{3043514868058342601L, -6969680328292742107L, -2848071399224541709L, -6974741506299435163L, -987676837157680158L}).toString());
            }
            PrintWriter append2 = printWriter.append((CharSequence) new ObfuscatedString(new long[]{861300525523327736L, -4065967236800204060L, 3030144686053070928L, 3308389086462105480L}).toString());
            long j2 = this.zzg;
            append2.println(j2 + new ObfuscatedString(new long[]{1365016716511291185L, 8473091373469963286L}).toString() + simpleDateFormat.format(new Date(j2)));
        }
        if (this.zzj > 0) {
            printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{3766647373995094126L, 972620990576733479L, 2384632130437376898L, -400323093586942163L}).toString()).append((CharSequence) CommonStatusCodes.getStatusCodeString(this.zzi));
            PrintWriter append3 = printWriter.append((CharSequence) new ObfuscatedString(new long[]{5148751764209923616L, -6563532975240653880L, -1728268608315756725L}).toString());
            long j3 = this.zzj;
            append3.println(j3 + new ObfuscatedString(new long[]{5294252061645359162L, -8650613494460146480L}).toString() + simpleDateFormat.format(new Date(j3)));
        }
    }

    @KeepForSdk
    public boolean enableLocalFallback() {
        return false;
    }

    @Nullable
    @KeepForSdk
    public Account getAccount() {
        return null;
    }

    @NonNull
    @KeepForSdk
    public Feature[] getApiFeatures() {
        return zze;
    }

    @Nullable
    @KeepForSdk
    public final Feature[] getAvailableFeatures() {
        zzk zzkVar = this.zzD;
        if (zzkVar == null) {
            return null;
        }
        return zzkVar.zzb;
    }

    @Nullable
    @KeepForSdk
    public Executor getBindServiceExecutor() {
        return null;
    }

    @Nullable
    @KeepForSdk
    public Bundle getConnectionHint() {
        return null;
    }

    @NonNull
    @KeepForSdk
    public final Context getContext() {
        return this.zzl;
    }

    @NonNull
    @KeepForSdk
    public String getEndpointPackageName() {
        zzv zzvVar;
        if (isConnected() && (zzvVar = this.zza) != null) {
            return zzvVar.zza();
        }
        throw new RuntimeException(new ObfuscatedString(new long[]{-5930303715387268875L, 6733274997575053215L, 5080941824117070943L, -7216699463529322534L, 6032676190455749041L, -2979314760861869544L}).toString());
    }

    @KeepForSdk
    public int getGCoreServiceId() {
        return this.zzy;
    }

    @NonNull
    @KeepForSdk
    public Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    @Nullable
    @KeepForSdk
    public String getLastDisconnectMessage() {
        return this.zzk;
    }

    @Nullable
    @KeepForSdk
    public String getLocalStartServiceAction() {
        return null;
    }

    @NonNull
    @KeepForSdk
    public final Looper getLooper() {
        return this.zzm;
    }

    @KeepForSdk
    public int getMinApkVersion() {
        return GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @KeepForSdk
    @WorkerThread
    public void getRemoteService(@Nullable IAccountAccessor iAccountAccessor, @NonNull Set<Scope> set) {
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        String str = this.zzA;
        int i = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        Scope[] scopeArr = GetServiceRequest.zza;
        Bundle bundle = new Bundle();
        int i2 = this.zzy;
        Feature[] featureArr = GetServiceRequest.zzb;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i2, i, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.zzf = this.zzl.getPackageName();
        getServiceRequest.zzi = getServiceRequestExtraArgs;
        if (set != null) {
            getServiceRequest.zzh = (Scope[]) set.toArray(new Scope[0]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            if (account == null) {
                account = new Account(new ObfuscatedString(new long[]{4068458732184073140L, -5214484035102000997L, 2268300106380388391L, -1371434790621933760L}).toString(), new ObfuscatedString(new long[]{2982374945278385215L, 5235967633472588131L, 8251043705419700636L}).toString());
            }
            getServiceRequest.zzj = account;
            if (iAccountAccessor != null) {
                getServiceRequest.zzg = iAccountAccessor.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.zzj = getAccount();
        }
        getServiceRequest.zzk = zze;
        getServiceRequest.zzl = getApiFeatures();
        if (usesClientTelemetry()) {
            getServiceRequest.zzo = true;
        }
        try {
            try {
                synchronized (this.zzq) {
                    try {
                        IGmsServiceBroker iGmsServiceBroker = this.zzr;
                        if (iGmsServiceBroker != null) {
                            iGmsServiceBroker.getService(new zzd(this, this.zzd.get()), getServiceRequest);
                        } else {
                            new ObfuscatedString(new long[]{-6064495437535818059L, 1151109373414094661L, 7812129782724493203L}).toString();
                            new ObfuscatedString(new long[]{-7790862662607291549L, -3073121555205097974L, -1920294428793885219L, -3822400384379638690L, -5470492141487969722L, 1649692671147745250L, 8891925426007471328L}).toString();
                        }
                    } finally {
                    }
                }
            } catch (RemoteException | RuntimeException unused) {
                new ObfuscatedString(new long[]{-7638629372083979021L, -1994085709231823451L, -2670576323485089260L}).toString();
                new ObfuscatedString(new long[]{-2001551116140504126L, 267828092613407111L, -4256917900140789408L, -1505131305667079272L, -7791239113636325441L, 7641192791186970130L}).toString();
                onPostInitHandler(8, null, null, this.zzd.get());
            }
        } catch (DeadObjectException unused2) {
            new ObfuscatedString(new long[]{-5988776893350496730L, 4000175203754448780L, 1772720194935003703L}).toString();
            new ObfuscatedString(new long[]{6699551745846378217L, 862986882229587131L, 7693767270363628409L, 152663792708206925L, 5324269816202799987L, 2258108340610722057L}).toString();
            triggerConnectionSuspended(3);
        } catch (SecurityException e) {
            throw e;
        }
    }

    @NonNull
    @KeepForSdk
    public Set<Scope> getScopes() {
        return Collections.emptySet();
    }

    @NonNull
    @KeepForSdk
    public final T getService() {
        T t;
        synchronized (this.zzp) {
            try {
                if (this.zzv != 5) {
                    checkConnected();
                    t = (T) this.zzs;
                    Preconditions.checkNotNull(t, new ObfuscatedString(new long[]{-4174220223637183492L, -4892045912934841141L, -9009640206767082385L, 7972892734282828440L, -3118135857652469840L, 3125660507065148482L}).toString());
                } else {
                    throw new DeadObjectException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t;
    }

    @Nullable
    @KeepForSdk
    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzq) {
            try {
                IGmsServiceBroker iGmsServiceBroker = this.zzr;
                if (iGmsServiceBroker == null) {
                    return null;
                }
                return iGmsServiceBroker.asBinder();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    @KeepForSdk
    public abstract String getServiceDescriptor();

    @NonNull
    @KeepForSdk
    public Intent getSignInIntent() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{843758272699288597L, 8958385041259019035L, -2527276511639129672L, -1335520312070378253L}).toString());
    }

    @NonNull
    @KeepForSdk
    public abstract String getStartServiceAction();

    @NonNull
    @KeepForSdk
    public String getStartServicePackage() {
        return new ObfuscatedString(new long[]{-4642694254680766327L, -7389517971584271610L, -2530248292293644109L, 3266176546732957146L}).toString();
    }

    @Nullable
    @KeepForSdk
    public ConnectionTelemetryConfiguration getTelemetryConfiguration() {
        zzk zzkVar = this.zzD;
        if (zzkVar == null) {
            return null;
        }
        return zzkVar.zzd;
    }

    @KeepForSdk
    public boolean getUseDynamicLookup() {
        if (getMinApkVersion() >= 211700000) {
            return true;
        }
        return false;
    }

    @KeepForSdk
    public boolean hasConnectionInfo() {
        return this.zzD != null;
    }

    @KeepForSdk
    public boolean isConnected() {
        boolean z;
        synchronized (this.zzp) {
            if (this.zzv == 4) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @KeepForSdk
    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzp) {
            int i = this.zzv;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    @KeepForSdk
    @CallSuper
    public void onConnectedLocked(@NonNull T t) {
        this.zzh = System.currentTimeMillis();
    }

    @KeepForSdk
    @CallSuper
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.zzi = connectionResult.getErrorCode();
        this.zzj = System.currentTimeMillis();
    }

    @KeepForSdk
    @CallSuper
    public void onConnectionSuspended(int i) {
        this.zzf = i;
        this.zzg = System.currentTimeMillis();
    }

    @KeepForSdk
    public void onPostInitHandler(int i, @Nullable IBinder iBinder, @Nullable Bundle bundle, int i2) {
        this.zzb.sendMessage(this.zzb.obtainMessage(1, i2, -1, new zzf(this, i, iBinder, bundle)));
    }

    @KeepForSdk
    public void onUserSignOut(@NonNull SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.onSignOutComplete();
    }

    @KeepForSdk
    public boolean providesSignIn() {
        return false;
    }

    @KeepForSdk
    public boolean requiresAccount() {
        return false;
    }

    @KeepForSdk
    public boolean requiresGooglePlayServices() {
        return true;
    }

    @KeepForSdk
    public boolean requiresSignIn() {
        return false;
    }

    @KeepForSdk
    public void setAttributionTag(@NonNull String str) {
        this.zzA = str;
    }

    @KeepForSdk
    public void triggerConnectionSuspended(int i) {
        this.zzb.sendMessage(this.zzb.obtainMessage(6, this.zzd.get(), i));
    }

    @KeepForSdk
    @VisibleForTesting
    public void triggerNotAvailable(@NonNull ConnectionProgressReportCallbacks connectionProgressReportCallbacks, int i, @Nullable PendingIntent pendingIntent) {
        Preconditions.checkNotNull(connectionProgressReportCallbacks, new ObfuscatedString(new long[]{8959272697841798850L, -6593091172062744897L, 5091554010892076264L, 5687195707561590245L, 7886826296188741401L, -9108240017879874352L, -2709288246986609238L}).toString());
        this.zzc = connectionProgressReportCallbacks;
        this.zzb.sendMessage(this.zzb.obtainMessage(3, this.zzd.get(), i, pendingIntent));
    }

    @KeepForSdk
    public boolean usesClientTelemetry() {
        return false;
    }

    @NonNull
    public final String zze() {
        String str = this.zzz;
        if (str == null) {
            return this.zzl.getClass().getName();
        }
        return str;
    }

    public final void zzl(int i, @Nullable Bundle bundle, int i2) {
        this.zzb.sendMessage(this.zzb.obtainMessage(7, i2, -1, new zzg(this, i, null)));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BaseGmsClient(@NonNull Context context, @NonNull Looper looper, int i, @Nullable BaseConnectionCallbacks baseConnectionCallbacks, @Nullable BaseOnConnectionFailedListener baseOnConnectionFailedListener, @Nullable String str) {
        this(context, looper, r3, r4, i, baseConnectionCallbacks, baseOnConnectionFailedListener, str);
        GmsClientSupervisor gmsClientSupervisor = GmsClientSupervisor.getInstance(context);
        GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
        Preconditions.checkNotNull(baseConnectionCallbacks);
        Preconditions.checkNotNull(baseOnConnectionFailedListener);
    }

    @KeepForSdk
    public void disconnect(@NonNull String str) {
        this.zzk = str;
        disconnect();
    }

    @KeepForSdk
    @VisibleForTesting
    public BaseGmsClient(@NonNull Context context, @NonNull Looper looper, @NonNull GmsClientSupervisor gmsClientSupervisor, @NonNull GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, @Nullable BaseConnectionCallbacks baseConnectionCallbacks, @Nullable BaseOnConnectionFailedListener baseOnConnectionFailedListener, @Nullable String str) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList();
        this.zzv = 1;
        this.zzB = null;
        this.zzC = false;
        this.zzD = null;
        this.zzd = new AtomicInteger(0);
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{5100434123169995712L, 5700733378912111637L, -1035920600897505791L, 855685758778245767L}).toString());
        this.zzl = context;
        Preconditions.checkNotNull(looper, new ObfuscatedString(new long[]{-3076233686159189003L, -860345666998672375L, -5141883514975146388L, 7090911222072974606L}).toString());
        this.zzm = looper;
        Preconditions.checkNotNull(gmsClientSupervisor, new ObfuscatedString(new long[]{533698221196708204L, 7436019427855583314L, 5730736515409847457L, -4795519512855688815L, 4859212791761155161L}).toString());
        this.zzn = gmsClientSupervisor;
        Preconditions.checkNotNull(googleApiAvailabilityLight, new ObfuscatedString(new long[]{7298795615903612551L, 4834876101384257312L, 3557154498627977793L, -1434772103049576757L, 5453280618035694253L, -1449252534605317894L}).toString());
        this.zzo = googleApiAvailabilityLight;
        this.zzb = new zzb(this, looper);
        this.zzy = i;
        this.zzw = baseConnectionCallbacks;
        this.zzx = baseOnConnectionFailedListener;
        this.zzz = str;
    }
}
