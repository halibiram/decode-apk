package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.work.WorkRequest;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.Common;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes2.dex */
public final class zabe extends GoogleApiClient implements zabz {

    @Nullable
    @VisibleForTesting
    zabx zab;
    final Map<Api.AnyClientKey<?>, Api.Client> zac;
    Set<Scope> zad;
    final ClientSettings zae;
    final Map<Api<?>, Boolean> zaf;
    final Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> zag;

    @Nullable
    Set<zada> zah;
    final zadc zai;
    private final Lock zaj;
    private final com.google.android.gms.common.internal.zak zak;
    private final int zam;
    private final Context zan;
    private final Looper zao;
    private volatile boolean zap;
    private long zaq;
    private long zar;
    private final zabc zas;
    private final GoogleApiAvailability zat;
    private final ListenerHolders zau;
    private final ArrayList<zat> zav;
    private Integer zaw;
    private final com.google.android.gms.common.internal.zaj zax;

    @Nullable
    private zaca zal = null;

    @VisibleForTesting
    final Queue<BaseImplementation.ApiMethodImpl<?, ?>> zaa = new LinkedList();

    public zabe(Context context, Lock lock, Looper looper, ClientSettings clientSettings, GoogleApiAvailability googleApiAvailability, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, Map<Api<?>, Boolean> map, List<GoogleApiClient.ConnectionCallbacks> list, List<GoogleApiClient.OnConnectionFailedListener> list2, Map<Api.AnyClientKey<?>, Api.Client> map2, int i, int i2, ArrayList<zat> arrayList) {
        this.zaq = true != ClientLibraryUtils.isPackageSide() ? 120000L : WorkRequest.MIN_BACKOFF_MILLIS;
        this.zar = CoroutineLiveDataKt.DEFAULT_TIMEOUT;
        this.zad = new HashSet();
        this.zau = new ListenerHolders();
        this.zaw = null;
        this.zah = null;
        zaay zaayVar = new zaay(this);
        this.zax = zaayVar;
        this.zan = context;
        this.zaj = lock;
        this.zak = new com.google.android.gms.common.internal.zak(looper, zaayVar);
        this.zao = looper;
        this.zas = new zabc(this, looper);
        this.zat = googleApiAvailability;
        this.zam = i;
        if (i >= 0) {
            this.zaw = Integer.valueOf(i2);
        }
        this.zaf = map;
        this.zac = map2;
        this.zav = arrayList;
        this.zai = new zadc();
        Iterator<GoogleApiClient.ConnectionCallbacks> it = list.iterator();
        while (it.hasNext()) {
            this.zak.zaf(it.next());
        }
        Iterator<GoogleApiClient.OnConnectionFailedListener> it2 = list2.iterator();
        while (it2.hasNext()) {
            this.zak.zag(it2.next());
        }
        this.zae = clientSettings;
        this.zag = abstractClientBuilder;
    }

    public static int zad(Iterable<Api.Client> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (Api.Client client : iterable) {
            z2 |= client.requiresSignIn();
            z3 |= client.providesSignIn();
        }
        if (z2) {
            if (z3 && z) {
                return 2;
            }
            return 1;
        }
        return 3;
    }

    public static String zag(int i) {
        return (i != 1 ? i != 2 ? i != 3 ? new ObfuscatedString(new long[]{-4642806025071393286L, -4061453409497351004L}) : new ObfuscatedString(new long[]{2216327965393973133L, -6411367886694791260L, 1049721113296948763L, -6751631847278959992L}) : new ObfuscatedString(new long[]{-4784267074055720731L, -3225635104073698082L, -5464372656265102761L, -3235380543120041013L}) : new ObfuscatedString(new long[]{8852316037096215953L, -420049348717638239L, 2660507919149070205L, 1179490830437450774L})).toString();
    }

    public static /* bridge */ /* synthetic */ void zai(zabe zabeVar) {
        zabeVar.zaj.lock();
        try {
            if (zabeVar.zap) {
                zabeVar.zan();
            }
        } finally {
            zabeVar.zaj.unlock();
        }
    }

    public static /* bridge */ /* synthetic */ void zaj(zabe zabeVar) {
        zabeVar.zaj.lock();
        try {
            if (zabeVar.zak()) {
                zabeVar.zan();
            }
        } finally {
            zabeVar.zaj.unlock();
        }
    }

    private final void zal(int i) {
        Integer num = this.zaw;
        if (num == null) {
            this.zaw = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            String zag = zag(i);
            String zag2 = zag(this.zaw.intValue());
            StringBuilder sb = new StringBuilder(zag2.length() + zag.length() + 51);
            sb.append(new ObfuscatedString(new long[]{7131057561568612511L, -6394223813155429754L, -6712325368687140267L, 2251553526875795814L, 7798761057521660250L}).toString());
            sb.append(zag);
            throw new IllegalStateException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{2439552615823060995L, -1777813939847151894L, 4053227363290553978L, -7342204384676394862L, 1231579344151946519L}), sb, zag2));
        }
        if (this.zal != null) {
            return;
        }
        boolean z = false;
        boolean z2 = false;
        for (Api.Client client : this.zac.values()) {
            z |= client.requiresSignIn();
            z2 |= client.providesSignIn();
        }
        int intValue = this.zaw.intValue();
        if (intValue != 1) {
            if (intValue == 2 && z) {
                this.zal = zaaa.zag(this.zan, this, this.zaj, this.zao, this.zat, this.zac, this.zae, this.zaf, this.zag, this.zav);
                return;
            }
        } else if (z) {
            if (z2) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-1366410906150050961L, -3143060916868853383L, -5011465989854060125L, 5215107997878514322L, -1162802412830983157L, -195856094220795776L, 1145518654017280370L, -8382691853147752994L, -8517924692474534814L, 8227351502933264976L, -6723964816381874107L, 1401506702411173329L, 2235614478834362022L, 568582865062464675L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-5561529171287618032L, 8770264148526436303L, -2853679214197195113L, 5005196977964887874L, 4231578071191789337L, 3364094339418760911L, 7720361167198338488L, 6756979517464557208L, 5599251093910049973L, -4703850057631134363L, -8083840927205451157L, -9134624642378743683L, -2549378335581274923L, 2584348982812448812L, 5203178225077955424L, -384338731562917693L, -558799935342461606L}).toString());
        }
        this.zal = new zabi(this.zan, this, this.zaj, this.zao, this.zat, this.zac, this.zae, this.zaf, this.zag, this.zav, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zam(GoogleApiClient googleApiClient, StatusPendingResult statusPendingResult, boolean z) {
        Common.zaa.zaa(googleApiClient).setResultCallback(new zabb(this, statusPendingResult, z, googleApiClient));
    }

    @GuardedBy("mLock")
    private final void zan() {
        this.zak.zab();
        ((zaca) Preconditions.checkNotNull(this.zal)).zaq();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect() {
        boolean z = true;
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), new ObfuscatedString(new long[]{-8458978004893898800L, 3560147082604048917L, 5158973545044650429L, -8244731748877214684L, 1633115181270978488L, -2623394040881521968L, -5981003803965187367L, -1003651274533331616L}).toString());
        this.zaj.lock();
        try {
            if (this.zam >= 0) {
                if (this.zaw == null) {
                    z = false;
                }
                Preconditions.checkState(z, new ObfuscatedString(new long[]{4204992587571669869L, 3550124419363408608L, 2957018198881550840L, 7875713714375326575L, -6520401736198557544L, 7013694368786313340L, -704396539743005405L, 9132813203621833196L, -4527969832849798114L}).toString());
            } else {
                Integer num = this.zaw;
                if (num == null) {
                    this.zaw = Integer.valueOf(zad(this.zac.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{5952525846868569768L, -6782269735961736042L, 6891473015711160745L, 6138738531270496557L, 5168658838373712116L, 4256778843326279233L, 8246912239377961699L, -1566627306436269334L, 7950653889265132548L, 8888484009135304204L, -4852683329099411817L, 7506307814940312927L, -5240908184096866870L, -8162325413504956150L, -8146246925630603254L, 2015117349837522410L, 4464649179069397532L}).toString());
                }
            }
            zal(((Integer) Preconditions.checkNotNull(this.zaw)).intValue());
            this.zak.zab();
            ConnectionResult zab = ((zaca) Preconditions.checkNotNull(this.zal)).zab();
            this.zaj.unlock();
            return zab;
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final PendingResult<Status> clearDefaultAccountAndReconnect() {
        Preconditions.checkState(isConnected(), new ObfuscatedString(new long[]{-595843375676099073L, -5120656779694116377L, -2984546980688335678L, -1725471053696286522L, -7041715952371686146L, -5500535309600779637L}).toString());
        Integer num = this.zaw;
        boolean z = true;
        if (num != null && num.intValue() == 2) {
            z = false;
        }
        Preconditions.checkState(z, new ObfuscatedString(new long[]{8254807925382008985L, 5936872831071857784L, 4560378058059635961L, 8231359184671985328L, 6730674442691670958L, -1597533357010173065L, -3302338226130801678L, 2612978817473965627L, -8768920952810344885L, -3887002174117926092L}).toString());
        StatusPendingResult statusPendingResult = new StatusPendingResult(this);
        if (this.zac.containsKey(Common.CLIENT_KEY)) {
            zam(this, statusPendingResult, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            zaaz zaazVar = new zaaz(this, atomicReference, statusPendingResult);
            zaba zabaVar = new zaba(this, statusPendingResult);
            GoogleApiClient.Builder builder = new GoogleApiClient.Builder(this.zan);
            builder.addApi(Common.API);
            builder.addConnectionCallbacks(zaazVar);
            builder.addOnConnectionFailedListener(zabaVar);
            builder.setHandler(this.zas);
            GoogleApiClient build = builder.build();
            atomicReference.set(build);
            build.connect();
        }
        return statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect() {
        this.zaj.lock();
        try {
            int i = 2;
            boolean z = false;
            if (this.zam >= 0) {
                Preconditions.checkState(this.zaw != null, new ObfuscatedString(new long[]{190191960697595719L, -5270788081817430830L, 7070000992734784679L, 3928278728314543209L, 3631694723283132821L, 3457362719209633760L, -5764250441585513683L, -8430623251398496870L, 5768958424157320795L}).toString());
            } else {
                Integer num = this.zaw;
                if (num == null) {
                    this.zaw = Integer.valueOf(zad(this.zac.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{-3770660576826343947L, -3551171170845279510L, -3121041767745154353L, 1724654329488423718L, -5493636323423709867L, -712308432045893552L, -4214011732402032234L, 2203018429408418997L, 462061187505122531L, -5820048737091839148L, 3069793624617321159L, 8050282346532603931L, 7700843214048581965L, 7928413361253473690L, 9153385958770682625L, -1747238392577531124L}).toString());
                }
            }
            int intValue = ((Integer) Preconditions.checkNotNull(this.zaw)).intValue();
            this.zaj.lock();
            try {
                if (intValue == 3 || intValue == 1) {
                    i = intValue;
                } else if (intValue != 2) {
                    i = intValue;
                    StringBuilder sb = new StringBuilder(33);
                    sb.append(new ObfuscatedString(new long[]{580240108067467648L, 9204174967512244713L, 5414408255167364045L, -2760514462631485968L}).toString());
                    sb.append(i);
                    Preconditions.checkArgument(z, sb.toString());
                    zal(i);
                    zan();
                    this.zaj.unlock();
                    return;
                }
                StringBuilder sb2 = new StringBuilder(33);
                sb2.append(new ObfuscatedString(new long[]{580240108067467648L, 9204174967512244713L, 5414408255167364045L, -2760514462631485968L}).toString());
                sb2.append(i);
                Preconditions.checkArgument(z, sb2.toString());
                zal(i);
                zan();
                this.zaj.unlock();
                return;
            } finally {
                this.zaj.unlock();
            }
            z = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void disconnect() {
        Lock lock;
        this.zaj.lock();
        try {
            this.zai.zab();
            zaca zacaVar = this.zal;
            if (zacaVar != null) {
                zacaVar.zar();
            }
            this.zau.zab();
            for (BaseImplementation.ApiMethodImpl<?, ?> apiMethodImpl : this.zaa) {
                apiMethodImpl.zan(null);
                apiMethodImpl.cancel();
            }
            this.zaa.clear();
            if (this.zal == null) {
                lock = this.zaj;
            } else {
                zak();
                this.zak.zaa();
                lock = this.zaj;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{6373415908111473781L, -1843503247263677423L, -4914680725655018620L}).toString()).println(this.zan);
        printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{6761779409768517243L, -4134474399998372769L, -2409447272894365181L}).toString()).print(this.zap);
        printWriter.append((CharSequence) new ObfuscatedString(new long[]{5716402095522718062L, -1414686854291678953L, 6267296207892938295L, 6903152375396280289L}).toString()).print(this.zaa.size());
        printWriter.append((CharSequence) new ObfuscatedString(new long[]{6217439131613067108L, 7198859651587512643L, 5998601543666767901L, 4770030561392206315L, 7801867832035822567L}).toString()).println(this.zai.zab.size());
        zaca zacaVar = this.zal;
        if (zacaVar != null) {
            zacaVar.zas(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(@NonNull T t) {
        String obfuscatedString;
        Lock lock;
        Api<?> api = t.getApi();
        boolean containsKey = this.zac.containsKey(t.getClientKey());
        if (api != null) {
            obfuscatedString = api.zad();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{5895523818240749278L, 6919755318550397183L}).toString();
        }
        StringBuilder sb = new StringBuilder(String.valueOf(obfuscatedString).length() + 65);
        sb.append(new ObfuscatedString(new long[]{7314425729090315899L, 8234173201370238006L, 3508101683512751270L, 7037662962772393606L, 755054696507141806L, 963371610494899958L, -5914362129913441921L}).toString());
        sb.append(obfuscatedString);
        sb.append(new ObfuscatedString(new long[]{-2076185856652778703L, -296213961491956981L, 307725741657779063L, -1369443711437487572L}).toString());
        Preconditions.checkArgument(containsKey, sb.toString());
        this.zaj.lock();
        try {
            zaca zacaVar = this.zal;
            if (zacaVar == null) {
                this.zaa.add(t);
                lock = this.zaj;
            } else {
                t = (T) zacaVar.zae(t);
                lock = this.zaj;
            }
            lock.unlock();
            return t;
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(@NonNull T t) {
        String obfuscatedString;
        Lock lock;
        Api<?> api = t.getApi();
        boolean containsKey = this.zac.containsKey(t.getClientKey());
        if (api != null) {
            obfuscatedString = api.zad();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{7895594798977355777L, 7248362625172913253L}).toString();
        }
        StringBuilder sb = new StringBuilder(String.valueOf(obfuscatedString).length() + 65);
        sb.append(new ObfuscatedString(new long[]{1191584324881408438L, -5929391639771522718L, 2575572554821416992L, 5910167729756247425L, 4899389257863206422L, 1585029404384521925L, -5817554237589711164L}).toString());
        sb.append(obfuscatedString);
        sb.append(new ObfuscatedString(new long[]{8112272982254392030L, 4536340299274855293L, -2895584736052752525L, -1818074571696815089L}).toString());
        Preconditions.checkArgument(containsKey, sb.toString());
        this.zaj.lock();
        try {
            zaca zacaVar = this.zal;
            if (zacaVar != null) {
                if (this.zap) {
                    this.zaa.add(t);
                    while (!this.zaa.isEmpty()) {
                        BaseImplementation.ApiMethodImpl<?, ?> remove = this.zaa.remove();
                        this.zai.zaa(remove);
                        remove.setFailedResult(Status.RESULT_INTERNAL_ERROR);
                    }
                    lock = this.zaj;
                } else {
                    t = (T) zacaVar.zaf(t);
                    lock = this.zaj;
                }
                lock.unlock();
                return t;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{140863470982828914L, -4867168571790867160L, 4974421969916326604L, 7129391527860721087L, 1161189304894265534L, 5657341804309871108L}).toString());
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public final <C extends Api.Client> C getClient(@NonNull Api.AnyClientKey<C> anyClientKey) {
        C c = (C) this.zac.get(anyClientKey);
        Preconditions.checkNotNull(c, new ObfuscatedString(new long[]{-4070583741918559254L, -3773042716694596801L, -4146526583036099005L, 3103398722548602663L, 6786962692627300921L, 2607763393435352515L}).toString());
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public final ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        ConnectionResult connectionResult;
        Lock lock;
        this.zaj.lock();
        try {
            if (!isConnected() && !this.zap) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-8450289307277957996L, -8115413882265389932L, -1657331208030980233L, 6760017710569644250L, 3289591209833308462L, -920800807380921792L, 8321166366217577380L, 1668719978706313540L, 413772989425711906L, 1332909860944563449L}).toString());
            }
            if (this.zac.containsKey(api.zab())) {
                ConnectionResult zad = ((zaca) Preconditions.checkNotNull(this.zal)).zad(api);
                if (zad == null) {
                    if (this.zap) {
                        connectionResult = ConnectionResult.RESULT_SUCCESS;
                        lock = this.zaj;
                    } else {
                        new ObfuscatedString(new long[]{182106573729292525L, -8484525227992153627L, 6993027327058169646L, -4514996395205035007L}).toString();
                        zaf();
                        Log.wtf(new ObfuscatedString(new long[]{-6064327137258016043L, -3817425202899350640L, 8333930868600869226L, 4996907968741963148L}).toString(), String.valueOf(api.zad()).concat(new ObfuscatedString(new long[]{-894128485652542368L, -3498532792161770877L, 8390411884048694316L, 3612943002626602360L, -4177140007039804437L, 1739114494816811739L, 7559181853965099944L, -3550829282638942060L, 4973603100372449380L, -8669583249722381329L, -3139568915482973521L, -8825025819206658795L, -1157720013582522011L, 7973529784813324567L}).toString()), new Exception());
                        connectionResult = new ConnectionResult(8, null);
                        lock = this.zaj;
                    }
                    lock.unlock();
                    return connectionResult;
                }
                this.zaj.unlock();
                return zad;
            }
            throw new IllegalArgumentException(String.valueOf(api.zad()).concat(new ObfuscatedString(new long[]{6140607481162396134L, -1836134283640476627L, 1467294341669956624L, 5129337046176033028L, -2848265996967226690L, 7297979695002275143L, 4468121547488752544L}).toString()));
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Context getContext() {
        return this.zan;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.zao;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasApi(@NonNull Api<?> api) {
        return this.zac.containsKey(api.zab());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasConnectedApi(@NonNull Api<?> api) {
        Api.Client client;
        if (!isConnected() || (client = this.zac.get(api.zab())) == null || !client.isConnected()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnected() {
        zaca zacaVar = this.zal;
        if (zacaVar != null && zacaVar.zaw()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnecting() {
        zaca zacaVar = this.zal;
        if (zacaVar != null && zacaVar.zax()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionCallbacksRegistered(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.zak.zaj(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionFailedListenerRegistered(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.zak.zak(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        zaca zacaVar = this.zal;
        if (zacaVar != null && zacaVar.zay(signInConnectionListener)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void maybeSignOut() {
        zaca zacaVar = this.zal;
        if (zacaVar != null) {
            zacaVar.zau();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zak.zaf(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zak.zag(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <L> ListenerHolder<L> registerListener(@NonNull L l) {
        this.zaj.lock();
        try {
            return this.zau.zaa(l, this.zao, new ObfuscatedString(new long[]{-5555085367257358269L, 6948632953886055749L}).toString());
        } finally {
            this.zaj.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void stopAutoManage(@NonNull FragmentActivity fragmentActivity) {
        LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) fragmentActivity);
        if (this.zam >= 0) {
            zak.zaa(lifecycleActivity).zae(this.zam);
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{3191133466134344666L, 6579816713727735879L, 3035966470363106693L, 3779437985249569682L, -6918869743690118327L, -2620680331316915273L, -7211567627651791953L, 6447395813070411766L, 3586383781904966270L, -4783168020069192123L}).toString());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zak.zah(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zak.zai(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    @GuardedBy("mLock")
    public final void zaa(ConnectionResult connectionResult) {
        if (!this.zat.isPlayServicesPossiblyUpdating(this.zan, connectionResult.getErrorCode())) {
            zak();
        }
        if (!this.zap) {
            this.zak.zac(connectionResult);
            this.zak.zaa();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    @GuardedBy("mLock")
    public final void zab(@Nullable Bundle bundle) {
        while (!this.zaa.isEmpty()) {
            execute(this.zaa.remove());
        }
        this.zak.zad(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    @GuardedBy("mLock")
    public final void zac(int i, boolean z) {
        if (i == 1) {
            if (!z && !this.zap) {
                this.zap = true;
                if (this.zab == null && !ClientLibraryUtils.isPackageSide()) {
                    try {
                        this.zab = this.zat.zac(this.zan.getApplicationContext(), new zabd(this));
                    } catch (SecurityException unused) {
                    }
                }
                zabc zabcVar = this.zas;
                zabcVar.sendMessageDelayed(zabcVar.obtainMessage(1), this.zaq);
                zabc zabcVar2 = this.zas;
                zabcVar2.sendMessageDelayed(zabcVar2.obtainMessage(2), this.zar);
            }
            i = 1;
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.zai.zab.toArray(new BasePendingResult[0])) {
            basePendingResult.forceFailureUnlessReady(zadc.zaa);
        }
        this.zak.zae(i);
        this.zak.zaa();
        if (i == 2) {
            zan();
        }
    }

    public final String zaf() {
        StringWriter stringWriter = new StringWriter();
        dump(new ObfuscatedString(new long[]{8013261473825654411L}).toString(), null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    @GuardedBy("mLock")
    public final boolean zak() {
        if (!this.zap) {
            return false;
        }
        this.zap = false;
        this.zas.removeMessages(2);
        this.zas.removeMessages(1);
        zabx zabxVar = this.zab;
        if (zabxVar != null) {
            zabxVar.zab();
            this.zab = null;
        }
        return true;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zao(zada zadaVar) {
        this.zaj.lock();
        try {
            if (this.zah == null) {
                this.zah = new HashSet();
            }
            this.zah.add(zadaVar);
            this.zaj.unlock();
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
    
        if (r4 != false) goto L19;
     */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zap(zada zadaVar) {
        this.zaj.lock();
        try {
            Set<zada> set = this.zah;
            if (set == null) {
                Log.wtf(new ObfuscatedString(new long[]{-4274689706167725386L, 8456855735527088755L, -7885132559291637750L, -4623234956784701344L}).toString(), new ObfuscatedString(new long[]{4885925637142723155L, -274823585587865850L, 5452832618835976842L, -9045694684457122774L, 5642788038251370065L, 7782547166578822668L, 5589098338723125170L, -4966701768676520576L, -8938770553432892806L, -249039100817771285L}).toString(), new Exception());
            } else if (!set.remove(zadaVar)) {
                Log.wtf(new ObfuscatedString(new long[]{-929590148331302795L, -2443162471430688546L, -6558865966769608988L, -1952854243967394473L}).toString(), new ObfuscatedString(new long[]{1208410188538677332L, -7087000275639210206L, 281193067074555069L, 4469108345446207014L, 140849664060476414L, -7753842146113467751L, 4256024336627543746L, 6167564437805689492L, 8733134125830995165L, 715036034120684808L}).toString(), new Exception());
            } else {
                this.zaj.lock();
                try {
                    Set<zada> set2 = this.zah;
                    if (set2 == null) {
                        this.zaj.unlock();
                    } else {
                        boolean isEmpty = set2.isEmpty();
                        this.zaj.unlock();
                    }
                    zaca zacaVar = this.zal;
                    if (zacaVar != null) {
                        zacaVar.zat();
                    }
                } finally {
                    this.zaj.unlock();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), new ObfuscatedString(new long[]{5963399746450027446L, -3772071027904883903L, -4502539885149439093L, 5848079230268875817L, 5917016914215702041L, 1877850255198609980L, 9045011124424506487L, 3176156197578810497L}).toString());
        Preconditions.checkNotNull(timeUnit, new ObfuscatedString(new long[]{981019102298742111L, -2674182104362175037L, -8973379985680493637L, 262540029541461474L, -2097612242214180677L}).toString());
        this.zaj.lock();
        try {
            Integer num = this.zaw;
            if (num == null) {
                this.zaw = Integer.valueOf(zad(this.zac.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-8683945609040349095L, -8502759484063401406L, -2141440771548519437L, 4981516850107967897L, 4933490253097579346L, 3102114094746474911L, 6981382438132283896L, -9019223278044600901L, -3745748411675295569L, 7947655603040649868L, 6890667603633159695L, 1698604480469276331L, -7316522159643368350L, 2118519792977458880L, -6039077907385519764L, -4750982381272396992L, 240515339680341679L}).toString());
            }
            zal(((Integer) Preconditions.checkNotNull(this.zaw)).intValue());
            this.zak.zab();
            ConnectionResult zac = ((zaca) Preconditions.checkNotNull(this.zal)).zac(j, timeUnit);
            this.zaj.unlock();
            return zac;
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect(int i) {
        this.zaj.lock();
        boolean z = true;
        if (i != 3 && i != 1) {
            if (i == 2) {
                i = 2;
            } else {
                z = false;
            }
        }
        try {
            StringBuilder sb = new StringBuilder(33);
            sb.append(new ObfuscatedString(new long[]{-7720382580003297637L, -8316059703900575339L, 8025111215087689545L, -3634486412255558067L}).toString());
            sb.append(i);
            Preconditions.checkArgument(z, sb.toString());
            zal(i);
            zan();
        } finally {
            this.zaj.unlock();
        }
    }
}
