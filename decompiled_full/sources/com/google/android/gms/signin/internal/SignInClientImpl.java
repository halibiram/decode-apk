package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zat;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class SignInClientImpl extends GmsClient<zaf> implements com.google.android.gms.signin.zae {
    public static final /* synthetic */ int zaa = 0;
    private final boolean zab;
    private final ClientSettings zac;
    private final Bundle zad;

    @Nullable
    private final Integer zae;

    public SignInClientImpl(@NonNull Context context, @NonNull Looper looper, boolean z, @NonNull ClientSettings clientSettings, @NonNull Bundle bundle, @NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks, @NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zab = true;
        this.zac = clientSettings;
        this.zad = bundle;
        this.zae = clientSettings.zab();
    }

    @NonNull
    @KeepForSdk
    public static Bundle createBundleFromClientSettings(@NonNull ClientSettings clientSettings) {
        clientSettings.zaa();
        Integer zab = clientSettings.zab();
        Bundle bundle = new Bundle();
        bundle.putParcelable(new ObfuscatedString(new long[]{813019604074532074L, -5999902586060053925L, 4225574518066607073L, 4397812199823400491L, -4104982188756927022L, 5342889007834304010L, -2342556889685536066L, 1378455494206502596L, -6695917529683526880L}).toString(), clientSettings.getAccount());
        if (zab != null) {
            bundle.putInt(new ObfuscatedString(new long[]{4752635245878773338L, 1350421590112664792L, -8944389992224887793L, -1282531349150282595L, 5455610509275409708L, 868915161350087225L, -3082893415694951579L, 401572980146903589L, -2724306184118496402L}).toString(), zab.intValue());
        }
        bundle.putBoolean(new ObfuscatedString(new long[]{-3464072059425647459L, -2559885839320900827L, -3659574509796907169L, 7907471363940518558L, 8695084884064732588L, -1515478885897697900L, 4080596689096743818L, -1646043938401030444L, 2292950830253664569L}).toString(), false);
        bundle.putBoolean(new ObfuscatedString(new long[]{5586755311549487288L, -7351836784477055546L, 1316024022380705113L, 4126541364602426157L, -5296429471757588921L, 8319844074617233967L, 4970971305355461935L, 4350976366194490983L}).toString(), false);
        bundle.putString(new ObfuscatedString(new long[]{1922839403937505139L, -6742008746917281988L, -3195212930165076321L, -6789831489901662294L, -7484948338923149186L, 7862026160587388715L, 9104865481643386362L, -149303339097385064L}).toString(), null);
        bundle.putBoolean(new ObfuscatedString(new long[]{1922130777817121463L, 9044739412504860774L, 8775470701699815858L, 743935522666088181L, -1205119420758331726L, 4149771521427167656L, 6149917926626578166L, 7724033788554281782L, -1385395963667033585L}).toString(), true);
        bundle.putBoolean(new ObfuscatedString(new long[]{-1482189449891101095L, 4186961474370288962L, 4112203200713427202L, 2655699430449056936L, -2133871316515529906L, 649621579133828415L, 3327295202384415192L, 3656467152550120912L, -2629974663578862034L}).toString(), false);
        bundle.putString(new ObfuscatedString(new long[]{8972825318304749337L, 1574186682347402790L, 5074600822962022309L, 2644651218979913713L, -1277321489292667538L, -7804424199107604981L, 3224372353212770486L, 8458033342095641383L}).toString(), null);
        bundle.putString(new ObfuscatedString(new long[]{11653852588725570L, 972850733966664221L, 1821698961356800442L, -4765439034547445847L, 5814244385925030043L, -718180551703037105L, 5046304539580509481L, 1333105486853619235L}).toString(), null);
        bundle.putBoolean(new ObfuscatedString(new long[]{8559334061573120233L, -8085524012005796867L, -3939653698500872445L, 597404386885709306L, 2189141726218207127L, -3492718552904756341L, -5686742286490615513L, 2613673308414158294L, 4355789164468732965L}).toString(), false);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    public final /* synthetic */ IInterface createServiceInterface(@NonNull IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{5972587885596912454L, 2705853784042927604L, 7915464207784637943L, 6924623927881797938L, 1926221915969148373L, -5910223123760569459L, -2227714606500349452L, -6467632569324319757L}).toString());
        if (queryLocalInterface instanceof zaf) {
            return (zaf) queryLocalInterface;
        }
        return new zaf(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    public final Bundle getGetServiceRequestExtraArgs() {
        if (!getContext().getPackageName().equals(this.zac.getRealClientPackageName())) {
            this.zad.putString(new ObfuscatedString(new long[]{-6745263132323926164L, -5713074976022330022L, -5948130634589886016L, 7552669674275705962L, -7069528193960324015L, 581163799962444663L, 8831415631956375020L, 4196575733189299767L, 5759139928443057903L}).toString(), this.zac.getRealClientPackageName());
        }
        return this.zad;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    public final String getServiceDescriptor() {
        return new ObfuscatedString(new long[]{-7450435393104437276L, -746386093326216999L, -2620651666156875594L, -2051618130272486462L, 2266455514344549946L, 952531212626391116L, 6490669334603348955L, 4056404876068363107L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @NonNull
    public final String getStartServiceAction() {
        return new ObfuscatedString(new long[]{8820892004759419232L, 1494404487797704496L, 3370487265574581400L, -1315326693633143030L, -8509367327094096688L, 8339247787945859384L, -2834273566217342226L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return this.zab;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.signin.zae
    public final void zaa() {
        try {
            ((zaf) getService()).zae(((Integer) Preconditions.checkNotNull(this.zae)).intValue());
        } catch (RemoteException unused) {
            new ObfuscatedString(new long[]{-6775120536651420700L, 3427175481606992566L, 2776840441359144041L}).toString();
            new ObfuscatedString(new long[]{2227786290101055832L, -6954801449356400346L, 8565882083811952853L, -8224669302881387394L, -8870822133149019874L, 3377385836775814177L, -6306003656250800040L, -1661351999245051601L, -6488382455741339939L, -1808090354867503121L}).toString();
        }
    }

    @Override // com.google.android.gms.signin.zae
    public final void zab() {
        connect(new BaseGmsClient.LegacyClientCallbackAdapter());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.signin.zae
    public final void zac(@NonNull IAccountAccessor iAccountAccessor, boolean z) {
        try {
            ((zaf) getService()).zaf(iAccountAccessor, ((Integer) Preconditions.checkNotNull(this.zae)).intValue(), z);
        } catch (RemoteException unused) {
            new ObfuscatedString(new long[]{-3701793246756229818L, -3200439806464166708L, -2528085036994314524L}).toString();
            new ObfuscatedString(new long[]{2735460830706320508L, 2078107533365632576L, 2224106399230752044L, -1641353492382068817L, -1863989589765792214L, -6508500846292084467L, 6471778475865138151L, 2025334922776173079L, -7454054314631949001L}).toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.signin.zae
    public final void zad(zae zaeVar) {
        GoogleSignInAccount googleSignInAccount;
        Preconditions.checkNotNull(zaeVar, new ObfuscatedString(new long[]{-991475367008993938L, 4609308133159640598L, 6667949640680131451L, 4709852432166609612L, -7593813262000575218L, 6000350425906948945L}).toString());
        try {
            Account accountOrDefault = this.zac.getAccountOrDefault();
            if (new ObfuscatedString(new long[]{52019353951519399L, -1501099589740490379L, 1576570976526143935L, 5510292716175937446L}).toString().equals(accountOrDefault.name)) {
                googleSignInAccount = Storage.getInstance(getContext()).getSavedDefaultGoogleSignInAccount();
            } else {
                googleSignInAccount = null;
            }
            ((zaf) getService()).zag(new zai(1, new zat(accountOrDefault, ((Integer) Preconditions.checkNotNull(this.zae)).intValue(), googleSignInAccount)), zaeVar);
        } catch (RemoteException e) {
            new ObfuscatedString(new long[]{-4292410572348931867L, 1595178260806285326L, 4132324477813279528L}).toString();
            new ObfuscatedString(new long[]{-9082456189313969570L, 4486802901260659997L, 1808134089038514258L, -2256274742327378293L, -6461787532805068200L, -1656807376691489856L, 3739136838804437810L, -5304237053700424657L}).toString();
            try {
                zaeVar.zab(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf(new ObfuscatedString(new long[]{7392580494698133455L, -1310779844070624582L, -3671038475686556210L}).toString(), new ObfuscatedString(new long[]{649929922692233177L, 7999621741566376794L, -4080269702034546762L, 338462530795894200L, 6728171028501134733L, -1644611060050002356L, 1170057325015516927L, -6787897250246861669L, -8263176978228782775L, 7352571539033030465L, 3820825674297208182L, -4963765207668280215L, -4957996201525609155L, 5121795740154838636L}).toString(), e);
            }
        }
    }
}
