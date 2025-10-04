package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public class RequestConfiguration {

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    private final int zzb;
    private final int zzc;

    @Nullable
    private final String zzd;
    private final List zze;
    private final PublisherPrivacyPersonalizationState zzf;

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_G = new ObfuscatedString(new long[]{9085765817649919380L, 3166633867898753990L}).toString();

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_PG = new ObfuscatedString(new long[]{-1031250052479840691L, -7459488611440485960L}).toString();

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_T = new ObfuscatedString(new long[]{-8804248853447899465L, -4670835707707577381L}).toString();

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_MA = new ObfuscatedString(new long[]{7015342574700841408L, -1214057493733519588L}).toString();

    @NonNull
    public static final List zza = Arrays.asList(new ObfuscatedString(new long[]{1671708251868140172L, 3091707721608111175L}).toString(), new ObfuscatedString(new long[]{-1814399684081652881L, -8677848459927859444L}).toString(), new ObfuscatedString(new long[]{-8026185473519905040L, -7770383275383004172L}).toString(), new ObfuscatedString(new long[]{4179778157382608983L, 7782171456923230673L}).toString());

    /* loaded from: classes2.dex */
    public static class Builder {
        private int zza = -1;
        private int zzb = -1;

        @Nullable
        private String zzc = null;
        private final List zzd = new ArrayList();
        private PublisherPrivacyPersonalizationState zze = PublisherPrivacyPersonalizationState.DEFAULT;

        @NonNull
        public RequestConfiguration build() {
            return new RequestConfiguration(this.zza, this.zzb, this.zzc, this.zzd, this.zze, null);
        }

        @NonNull
        public Builder setMaxAdContentRating(@Nullable String str) {
            if (str != null && !new ObfuscatedString(new long[]{2257577435926105424L}).toString().equals(str)) {
                if (!new ObfuscatedString(new long[]{-3953043020781684878L, 6234501647210491951L}).toString().equals(str) && !new ObfuscatedString(new long[]{-1291421008122755602L, -1576135526743773944L}).toString().equals(str) && !new ObfuscatedString(new long[]{-6163473960165832375L, 6276914201728759521L}).toString().equals(str) && !new ObfuscatedString(new long[]{9115640090268241773L, -7773637536656203984L}).toString().equals(str)) {
                    AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{6105334609291801069L, -3042707110322694034L, 8663301857880723233L, -8795374079495769517L, 5295235278794739941L, -9109549350000308196L, -2282043496368853242L}), str);
                } else {
                    this.zzc = str;
                }
            } else {
                this.zzc = null;
            }
            return this;
        }

        @NonNull
        public Builder setPublisherPrivacyPersonalizationState(@NonNull PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState) {
            this.zze = publisherPrivacyPersonalizationState;
            return this;
        }

        @NonNull
        public Builder setTagForChildDirectedTreatment(int i) {
            if (i != -1 && i != 0 && i != 1) {
                zzcec.zzj(new ObfuscatedString(new long[]{644896447988389687L, -2048442098353183797L, 2152650772609573072L, 2039223508349496797L, 2333858357755557179L, 7497305279381067297L, -5147386049893093015L, -3453979357904484908L, 3347132527857042855L}).toString() + i);
            } else {
                this.zza = i;
            }
            return this;
        }

        @NonNull
        public Builder setTagForUnderAgeOfConsent(int i) {
            if (i != -1 && i != 0 && i != 1) {
                zzcec.zzj(new ObfuscatedString(new long[]{8812622770790364513L, 8144597359277914215L, -5290683145023023344L, -4047304903272702651L, -3453977928602266265L, -5273916911866027420L, 1796119465780971947L, -1600573551692476569L}).toString() + i);
            } else {
                this.zzb = i;
            }
            return this;
        }

        @NonNull
        public Builder setTestDeviceIds(@Nullable List<String> list) {
            this.zzd.clear();
            if (list != null) {
                this.zzd.addAll(list);
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface MaxAdContentRating {
    }

    /* loaded from: classes2.dex */
    public enum PublisherPrivacyPersonalizationState {
        DEFAULT(0),
        ENABLED(1),
        DISABLED(2);

        private final int zzb;

        PublisherPrivacyPersonalizationState(int i) {
            this.zzb = i;
        }

        public int getValue() {
            return this.zzb;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface TagForUnderAgeOfConsent {
    }

    public /* synthetic */ RequestConfiguration(int i, int i2, String str, List list, PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState, zzh zzhVar) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = str;
        this.zze = list;
        this.zzf = publisherPrivacyPersonalizationState;
    }

    @NonNull
    public String getMaxAdContentRating() {
        String str = this.zzd;
        return str == null ? new ObfuscatedString(new long[]{4036897208235542472L}).toString() : str;
    }

    @NonNull
    public PublisherPrivacyPersonalizationState getPublisherPrivacyPersonalizationState() {
        return this.zzf;
    }

    public int getTagForChildDirectedTreatment() {
        return this.zzb;
    }

    public int getTagForUnderAgeOfConsent() {
        return this.zzc;
    }

    @NonNull
    public List<String> getTestDeviceIds() {
        return new ArrayList(this.zze);
    }

    @NonNull
    public Builder toBuilder() {
        Builder builder = new Builder();
        builder.setTagForChildDirectedTreatment(this.zzb);
        builder.setTagForUnderAgeOfConsent(this.zzc);
        builder.setMaxAdContentRating(this.zzd);
        builder.setTestDeviceIds(this.zze);
        return builder;
    }
}
