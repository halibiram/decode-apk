package com.google.android.gms.common;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class AccountPicker {

    /* loaded from: classes2.dex */
    public static class AccountChooserOptions {

        @Nullable
        private Account zza;
        private boolean zzb;

        @Nullable
        private ArrayList zzc;

        @Nullable
        private ArrayList zzd;
        private boolean zze;

        @Nullable
        private String zzf;

        @Nullable
        private Bundle zzg;
        private boolean zzh;
        private int zzi;

        @Nullable
        private String zzj;
        private boolean zzk;

        @Nullable
        private zza zzl;

        @Nullable
        private String zzm;
        private boolean zzn;
        private boolean zzo;

        /* loaded from: classes2.dex */
        public static class Builder {

            @Nullable
            private Account zza;

            @Nullable
            private ArrayList zzb;

            @Nullable
            private ArrayList zzc;
            private boolean zzd = false;

            @Nullable
            private String zze;

            @Nullable
            private Bundle zzf;

            @NonNull
            public AccountChooserOptions build() {
                Preconditions.checkArgument(true, new ObfuscatedString(new long[]{652261475051701957L, 1193261696841178162L, 6991236999702785756L, -3789490164531107467L, 2476182711281442200L, -1544262801373100109L, -6880780350495581966L, 3242652609316649050L, -538844992988637116L, -1156830949540914408L, 6864010335107922401L}).toString());
                Preconditions.checkArgument(true, new ObfuscatedString(new long[]{3596907542106865731L, 1493078429204576545L, 5597553077926863638L, -3475458569883885616L, -1967056038696936097L, -4045322214543762641L, 7282264976164482568L, -1678221530599998154L, 5281371165201341915L}).toString());
                AccountChooserOptions accountChooserOptions = new AccountChooserOptions();
                accountChooserOptions.zzd = this.zzc;
                accountChooserOptions.zzc = this.zzb;
                accountChooserOptions.zze = this.zzd;
                accountChooserOptions.zzl = null;
                accountChooserOptions.zzj = null;
                accountChooserOptions.zzg = this.zzf;
                accountChooserOptions.zza = this.zza;
                accountChooserOptions.zzb = false;
                accountChooserOptions.zzh = false;
                accountChooserOptions.zzm = null;
                accountChooserOptions.zzi = 0;
                accountChooserOptions.zzf = this.zze;
                accountChooserOptions.zzk = false;
                accountChooserOptions.zzn = false;
                accountChooserOptions.zzo = false;
                return accountChooserOptions;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAllowableAccounts(@Nullable List<Account> list) {
                ArrayList arrayList;
                if (list == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(list);
                }
                this.zzb = arrayList;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAllowableAccountsTypes(@Nullable List<String> list) {
                ArrayList arrayList;
                if (list == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(list);
                }
                this.zzc = arrayList;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAlwaysShowAccountPicker(boolean z) {
                this.zzd = z;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setOptionsForAddingAccount(@Nullable Bundle bundle) {
                this.zzf = bundle;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setSelectedAccount(@Nullable Account account) {
                this.zza = account;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setTitleOverrideText(@Nullable String str) {
                this.zze = str;
                return this;
            }
        }

        public static /* bridge */ /* synthetic */ boolean zzA(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzo;
            return false;
        }

        public static /* bridge */ /* synthetic */ boolean zzB(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzb;
            return false;
        }

        public static /* bridge */ /* synthetic */ boolean zzC(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzh;
            return false;
        }

        public static /* bridge */ /* synthetic */ boolean zzD(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzk;
            return false;
        }

        public static /* bridge */ /* synthetic */ int zza(AccountChooserOptions accountChooserOptions) {
            int i = accountChooserOptions.zzi;
            return 0;
        }

        public static /* bridge */ /* synthetic */ zza zzd(AccountChooserOptions accountChooserOptions) {
            zza zzaVar = accountChooserOptions.zzl;
            return null;
        }

        public static /* bridge */ /* synthetic */ String zze(AccountChooserOptions accountChooserOptions) {
            String str = accountChooserOptions.zzj;
            return null;
        }

        public static /* bridge */ /* synthetic */ String zzf(AccountChooserOptions accountChooserOptions) {
            String str = accountChooserOptions.zzm;
            return null;
        }

        public static /* bridge */ /* synthetic */ boolean zzz(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.zzn;
            return false;
        }
    }

    private AccountPicker() {
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @Deprecated
    public static Intent newChooseAccountIntent(@Nullable Account account, @Nullable ArrayList<Account> arrayList, @Nullable String[] strArr, boolean z, @Nullable String str, @Nullable String str2, @Nullable String[] strArr2, @Nullable Bundle bundle) {
        Intent intent = new Intent();
        Preconditions.checkArgument(true, new ObfuscatedString(new long[]{-7595609159515531250L, 3734123263461034123L, 5868349436975395049L, -4834369130687906365L, 1621173038093870561L, 4499235669984728505L, 4457017744484851703L, 1440716805913381258L, 7503876680740475393L, -4243114688811017014L, 4544038755873489604L}).toString());
        intent.setAction(new ObfuscatedString(new long[]{-8859300722793488380L, 2495139593587131498L, -3268315849019925710L, 4578546725515262631L, -2811739530289959081L, -5720828839265707137L, -1775595963996202750L, -7383750523664438480L}).toString());
        intent.setPackage(new ObfuscatedString(new long[]{-1964301054292613241L, 337947514410556965L, 3282515086305435485L, -8342204061774631486L}).toString());
        intent.putExtra(new ObfuscatedString(new long[]{-7553790898388677321L, -14586704960249542L, -5538244544977310347L, -5343407749853618499L}).toString(), arrayList);
        intent.putExtra(new ObfuscatedString(new long[]{-2256076742239589226L, -6989535556181939828L, 5906770914928036372L, -9012771932021211784L}).toString(), strArr);
        intent.putExtra(new ObfuscatedString(new long[]{-5453951441121134572L, -3663397790088756634L, 2137141560194802041L, -1339240514388569132L}).toString(), bundle);
        intent.putExtra(new ObfuscatedString(new long[]{4494258922657316277L, -4600771633970867147L, -4918787983016973289L}).toString(), account);
        intent.putExtra(new ObfuscatedString(new long[]{-6127909468027237981L, 6935376579455673135L, 4953445644032560283L, -2997772800036898048L}).toString(), z);
        intent.putExtra(new ObfuscatedString(new long[]{4881525145776140682L, -7765634042868911249L, 2525749506413049641L, -2992905644932362951L}).toString(), str);
        intent.putExtra(new ObfuscatedString(new long[]{5071140526794113155L, -4575721154010452074L, 4833240250461149857L}).toString(), str2);
        intent.putExtra(new ObfuscatedString(new long[]{-5828390271430521217L, 6445577203454214686L, -6729943657778780762L, 8197437819935054828L, -6655867448804990482L}).toString(), strArr2);
        intent.putExtra(new ObfuscatedString(new long[]{4516091596725617793L, -180552891883361702L, 3804202424290727728L, -5066141026304881763L}).toString(), false);
        intent.putExtra(new ObfuscatedString(new long[]{-381273613078104193L, 6745783909075862085L, 1853164364020455010L}).toString(), 0);
        intent.putExtra(new ObfuscatedString(new long[]{-1842750351414141312L, 3089196878519316450L, 6953455844515081896L, 9181998704735861267L}).toString(), 0);
        intent.putExtra(new ObfuscatedString(new long[]{8769752029640265585L, -5950235584089258188L, -6649734303607698156L, 3981026735584998569L}).toString(), (String) null);
        return intent;
    }

    @NonNull
    public static Intent newChooseAccountIntent(@NonNull AccountChooserOptions accountChooserOptions) {
        Intent intent = new Intent();
        AccountChooserOptions.zzD(accountChooserOptions);
        AccountChooserOptions.zze(accountChooserOptions);
        Preconditions.checkArgument(true, new ObfuscatedString(new long[]{5264818590792140761L, 1315597173451836590L, -4757450151419441378L, 394482528863575550L, 3542091381093369722L, 4624408397048847870L, -4477575270207956255L, 6872778365838757735L, -3940471249181007762L, -5588060538640987085L, 1975032756307838357L}).toString());
        AccountChooserOptions.zzd(accountChooserOptions);
        Preconditions.checkArgument(true, new ObfuscatedString(new long[]{-3033076093996780000L, 8036470971375399303L, -1669442838128017516L, -6914026768019730234L, 7688521727523295219L, 5605763795582825162L, 5201022270079437031L, -5129128187489887749L, -109962166714291274L}).toString());
        AccountChooserOptions.zzB(accountChooserOptions);
        Preconditions.checkArgument(true, new ObfuscatedString(new long[]{7444686451398886801L, 3225106110168940821L, -467803866781594119L, -1928315426159243592L, 5607845430988420745L, -1616912123760802130L, -2451024518839914832L, -7030694470344644587L, 5773731903510427645L, 5604620752996277799L, 1313054425570637580L, 2540561637950315629L, -2271865957172812480L, 6429980855388776565L, -8296098405609001825L, -6156616530092700915L, 3422940140781598489L, 9184228566417303217L, -23706986132360066L, 6233687510556547070L, 4239168994185773487L, -3898253715641210402L, 8454021415122800442L, -8414295505534175354L, 6743015332027708467L, -259635222022907180L, 3893426572291307124L}).toString());
        AccountChooserOptions.zzD(accountChooserOptions);
        intent.setAction(new ObfuscatedString(new long[]{-7287274569997246780L, -728178930360934929L, 4933352577121056610L, 2512371454534011938L, 7873743428739942664L, 1992549888154519620L, -2778516120402411003L, -642414791885051137L}).toString());
        intent.setPackage(new ObfuscatedString(new long[]{-229115984635073674L, 8306409159660369751L, -6434275216672889243L, 7067272590633790482L}).toString());
        intent.putExtra(new ObfuscatedString(new long[]{1106675930006458654L, -1662004001364102106L, -6458145144715023273L, -1044742275250568990L}).toString(), accountChooserOptions.zzc);
        if (accountChooserOptions.zzd != null) {
            intent.putExtra(new ObfuscatedString(new long[]{-2976730306943269672L, 3940695806485588045L, 1926820962646641764L, -7334942456114318181L}).toString(), (String[]) accountChooserOptions.zzd.toArray(new String[0]));
        }
        intent.putExtra(new ObfuscatedString(new long[]{-2171506128459294714L, 5806936921855257103L, 6094926294228518833L, 2130961898913108441L}).toString(), accountChooserOptions.zzg);
        intent.putExtra(new ObfuscatedString(new long[]{7538076511174687584L, -5524068152290250809L, 4467137646968527222L}).toString(), accountChooserOptions.zza);
        AccountChooserOptions.zzB(accountChooserOptions);
        intent.putExtra(new ObfuscatedString(new long[]{5058711224115088012L, 7334886070307624081L, -6231198740794555783L, 3481963678743855726L, 5901105511498558993L}).toString(), false);
        intent.putExtra(new ObfuscatedString(new long[]{3425299009473712698L, -7949924889702568493L, -5167554241720723246L, 8516438607059997221L}).toString(), accountChooserOptions.zze);
        intent.putExtra(new ObfuscatedString(new long[]{-2195906273046037663L, -1779360800494980179L, -8804677578228084550L, -4981239777478661418L}).toString(), accountChooserOptions.zzf);
        AccountChooserOptions.zzC(accountChooserOptions);
        intent.putExtra(new ObfuscatedString(new long[]{1220092989338240568L, 3906970755224365242L, -5859509259958468341L, 3822860789403828491L}).toString(), false);
        AccountChooserOptions.zzf(accountChooserOptions);
        intent.putExtra(new ObfuscatedString(new long[]{8416890253505969841L, 8114459889199483163L, -6070107915315972315L, 1447941700392172516L}).toString(), (String) null);
        AccountChooserOptions.zza(accountChooserOptions);
        intent.putExtra(new ObfuscatedString(new long[]{-466037661748221829L, 675581534654472289L, -7315685055447040321L}).toString(), 0);
        AccountChooserOptions.zzD(accountChooserOptions);
        intent.putExtra(new ObfuscatedString(new long[]{-2019296570499390422L, 5910953501086617799L, -7331790720223101583L, -570238464071923151L}).toString(), 0);
        AccountChooserOptions.zze(accountChooserOptions);
        intent.putExtra(new ObfuscatedString(new long[]{7139487686846626920L, 2997702784292396919L, -3836084240397394725L, 5999908143229782440L}).toString(), (String) null);
        Bundle bundle = new Bundle();
        AccountChooserOptions.zzD(accountChooserOptions);
        AccountChooserOptions.zzd(accountChooserOptions);
        AccountChooserOptions.zzz(accountChooserOptions);
        AccountChooserOptions.zzA(accountChooserOptions);
        if (!bundle.isEmpty()) {
            intent.putExtra(new ObfuscatedString(new long[]{-8187306908921441641L, -8325567840795220619L, -4647060039831836699L, 8360463592067815741L, -7288602780794620203L}).toString(), bundle);
        }
        return intent;
    }
}
