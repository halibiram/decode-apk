package com.google.android.gms.ads.search;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class DynamicHeightSearchAdRequest {
    private final SearchAdRequest zza;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private final zzb zza = new zzb();
        private final Bundle zzb = new Bundle();

        @NonNull
        public Builder addCustomEventExtrasBundle(@NonNull Class<? extends CustomEvent> cls, @NonNull Bundle bundle) {
            this.zza.zzb(cls, bundle);
            return this;
        }

        @NonNull
        public Builder addNetworkExtras(@NonNull NetworkExtras networkExtras) {
            this.zza.zzc(networkExtras);
            return this;
        }

        @NonNull
        public Builder addNetworkExtrasBundle(@NonNull Class<? extends MediationAdapter> cls, @NonNull Bundle bundle) {
            this.zza.zzd(cls, bundle);
            return this;
        }

        @NonNull
        public DynamicHeightSearchAdRequest build() {
            this.zza.zzd(AdMobAdapter.class, this.zzb);
            return new DynamicHeightSearchAdRequest(this, null);
        }

        @NonNull
        public Builder setAdBorderSelectors(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{7931713273573374083L, -566923908994039244L, 4521852603428593582L, -3367234975099305133L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setAdTest(boolean z) {
            ObfuscatedString obfuscatedString;
            if (true != z) {
                obfuscatedString = new ObfuscatedString(new long[]{6459247857902951314L, -3016874599091233489L});
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-852335949756556519L, 1056012823027418336L});
            }
            this.zzb.putString(new ObfuscatedString(new long[]{8373355771346733615L, -9104758376516533465L, -781578332587663531L}).toString(), obfuscatedString.toString());
            return this;
        }

        @NonNull
        public Builder setAdjustableLineHeight(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{6941763554802264528L, 917338503837976969L, 2815085536457398538L, 912467067362864135L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setAdvancedOptionValue(@NonNull String str, @NonNull String str2) {
            this.zzb.putString(str, str2);
            return this;
        }

        @NonNull
        public Builder setAttributionSpacingBelow(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{-3586792000450559454L, 6597351886857494231L, 5370151721234341587L, -1116099689006580542L, 2650584477710753741L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setBorderSelections(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{3642032135036907299L, 8957628180474948568L, -4672361491330417054L, 1446073911208461656L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setChannel(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{7594812699374361150L, -1988119524944259106L, -4719784090906954862L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setColorAdBorder(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{-4896859461126679979L, -6404941457758365816L, -5102430967142451133L, 2662025668112280727L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setColorAdSeparator(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{-3728373330140381496L, 3546294538016127905L, -4600947282399848973L, -6472291955458307919L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setColorAnnotation(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{2585391052652530411L, -1529879112670453897L, -339597204741908490L, -8196123114018647438L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setColorAttribution(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{-8931605379858976279L, -3604602546003688758L, -8673578374153150245L, -4165270173427661631L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setColorBackground(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{6942387824872306870L, -2256356767366420444L, 2023864380167627906L, 2561975478080527459L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setColorBorder(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{-8611918551106664352L, 7688108531977914314L, -8437490217925616060L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setColorDomainLink(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{5977607614162533039L, -5016045783223050093L, -2030283522489043829L, -3691053962811557962L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setColorText(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{3825275153877500494L, 4884095324165464892L, -3210344075569323599L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setColorTitleLink(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{-6555643141057823683L, -415845889148787960L, -8586988021649781003L, -4807316819157148811L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setCssWidth(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{-8758840313279955170L, -3006392526089451925L, -6700951272620212409L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setDetailedAttribution(boolean z) {
            this.zzb.putString(new ObfuscatedString(new long[]{-4563834633586315449L, 6566140109981299400L, 8721411417650088271L, -8436897621459511998L}).toString(), Boolean.toString(z));
            return this;
        }

        @NonNull
        public Builder setFontFamily(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{7300213322865041675L, -5870572481527602948L, -4227428600771390273L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setFontFamilyAttribution(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{-3076602799427834532L, 1781160755594635730L, -2384071595555167233L, -1387326586265098648L, -8560255358690378572L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setFontSizeAnnotation(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{-5307558974949845263L, -101754582388814456L, 3168730539471300580L, -275705719654061964L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setFontSizeAttribution(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{1786066156286755743L, -6538815090314758114L, -3967642364582842926L, 4027688649649019597L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setFontSizeDescription(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{1037231566794835315L, -763062200930575004L, -8836443493042664880L, 3992206038928101534L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setFontSizeDomainLink(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{-5358331501291319750L, -495985248975376016L, 5153502160417003894L, -3990650575379277032L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setFontSizeTitle(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{-8267608618717932014L, 8910877750244009382L, 6953218260892847556L, -4637729341546164994L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setHostLanguage(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{-2699109819679569916L, -5017282087572237811L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setIsClickToCallEnabled(boolean z) {
            this.zzb.putString(new ObfuscatedString(new long[]{-7124902586825987483L, -2489504729521605247L, 2490973844895298478L}).toString(), Boolean.toString(z));
            return this;
        }

        @NonNull
        public Builder setIsLocationEnabled(boolean z) {
            this.zzb.putString(new ObfuscatedString(new long[]{1195868808606391597L, 2315101112320357214L, 3184333918036766942L}).toString(), Boolean.toString(z));
            return this;
        }

        @NonNull
        public Builder setIsPlusOnesEnabled(boolean z) {
            this.zzb.putString(new ObfuscatedString(new long[]{-4526871203615351202L, 4569691063160241490L, 5973959460140586421L}).toString(), Boolean.toString(z));
            return this;
        }

        @NonNull
        public Builder setIsSellerRatingsEnabled(boolean z) {
            this.zzb.putString(new ObfuscatedString(new long[]{337424356640149500L, 7432426022876009432L, 9005595433687045632L, 3449027571266648359L}).toString(), Boolean.toString(z));
            return this;
        }

        @NonNull
        public Builder setIsSiteLinksEnabled(boolean z) {
            this.zzb.putString(new ObfuscatedString(new long[]{7208572750090269360L, -7523334800009560384L, 1388308737303344080L}).toString(), Boolean.toString(z));
            return this;
        }

        @NonNull
        public Builder setIsTitleBold(boolean z) {
            this.zzb.putString(new ObfuscatedString(new long[]{-8421193547585705321L, 1756530384706172833L, -5941378160222427688L}).toString(), Boolean.toString(z));
            return this;
        }

        @NonNull
        public Builder setIsTitleUnderlined(boolean z) {
            this.zzb.putString(new ObfuscatedString(new long[]{6616856265841969714L, 9026478931240733313L, -2369522520246686109L, -7082049593893735965L}).toString(), Boolean.toString(!z));
            return this;
        }

        @NonNull
        public Builder setLocationColor(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{-3240587675179182677L, -2606932308559080771L, 3362312051063894799L, -226803507955727791L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setLocationFontSize(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{-658209295202348880L, -6109136667752312278L, -7785484611419566359L, 5346329115335379012L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setLongerHeadlines(boolean z) {
            this.zzb.putString(new ObfuscatedString(new long[]{-5719445491055868047L, -7695582316737059478L, -3577931237373372290L, -52886630151914946L}).toString(), Boolean.toString(z));
            return this;
        }

        @NonNull
        public Builder setNumber(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{2520907509212724940L, -6242190245787695499L, -954994219604219482L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setPage(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{2175799294807259694L, -5662841157640026843L, -4500084628958062881L}).toString(), Integer.toString(i));
            return this;
        }

        @NonNull
        public Builder setQuery(@NonNull String str) {
            this.zza.zze(str);
            return this;
        }

        @NonNull
        public Builder setStyleId(@NonNull String str) {
            this.zzb.putString(new ObfuscatedString(new long[]{-6157100475276858348L, 5096223712704492234L, -7193324376227590818L}).toString(), str);
            return this;
        }

        @NonNull
        public Builder setVerticalSpacing(int i) {
            this.zzb.putString(new ObfuscatedString(new long[]{8482540536584628722L, 9119689525677385928L, -6882333386251629939L, -1240334418354352376L}).toString(), Integer.toString(i));
            return this;
        }
    }

    public /* synthetic */ DynamicHeightSearchAdRequest(Builder builder, zza zzaVar) {
        this.zza = new SearchAdRequest(builder.zza, null);
    }

    @Nullable
    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(@NonNull Class<T> cls) {
        return this.zza.getCustomEventExtrasBundle(cls);
    }

    @Nullable
    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(@NonNull Class<T> cls) {
        return this.zza.getNetworkExtrasBundle(cls);
    }

    @NonNull
    public String getQuery() {
        return this.zza.getQuery();
    }

    public boolean isTestDevice(@NonNull Context context) {
        return this.zza.isTestDevice(context);
    }

    public final zzdx zza() {
        return this.zza.zza();
    }
}
