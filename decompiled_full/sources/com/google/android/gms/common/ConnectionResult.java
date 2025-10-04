package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

@SafeParcelable.Class(creator = "ConnectionResultCreator")
/* loaded from: classes2.dex */
public final class ConnectionResult extends AbstractSafeParcelable {
    public static final int API_DISABLED = 23;
    public static final int API_DISABLED_FOR_CONNECTION = 24;
    public static final int API_UNAVAILABLE = 16;
    public static final int CANCELED = 13;
    public static final int DEVELOPER_ERROR = 10;

    @Deprecated
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 1500;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 15;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 7;
    public static final int RESOLUTION_ACTIVITY_NOT_FOUND = 22;
    public static final int RESOLUTION_REQUIRED = 6;
    public static final int RESTRICTED_PROFILE = 20;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_MISSING_PERMISSION = 19;
    public static final int SERVICE_UPDATING = 18;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_FAILED = 17;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 14;

    @KeepForSdk
    public static final int UNKNOWN = -1;

    @SafeParcelable.VersionField(id = 1)
    final int zza;

    @SafeParcelable.Field(getter = "getErrorCode", id = 2)
    private final int zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getResolution", id = 3)
    private final PendingIntent zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getErrorMessage", id = 4)
    private final String zzd;

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public static final ConnectionResult RESULT_SUCCESS = new ConnectionResult(0);

    @NonNull
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new zzb();

    @SafeParcelable.Constructor
    public ConnectionResult(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @Nullable @SafeParcelable.Param(id = 3) PendingIntent pendingIntent, @Nullable @SafeParcelable.Param(id = 4) String str) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = pendingIntent;
        this.zzd = str;
    }

    @NonNull
    public static String zza(int i) {
        if (i != 99) {
            if (i != 1500) {
                switch (i) {
                    case -1:
                        return new ObfuscatedString(new long[]{1595002119223254689L, 6126519950845653054L}).toString();
                    case 0:
                        return new ObfuscatedString(new long[]{-437211159126505942L, 3227698080453809906L}).toString();
                    case 1:
                        return new ObfuscatedString(new long[]{5244439330480988140L, -6076655531613964156L, -3030438582647686639L}).toString();
                    case 2:
                        return new ObfuscatedString(new long[]{2583396262933478905L, 5143236567215047432L, 4559242686575707164L, -3479081577775920973L, -2989119764145798022L}).toString();
                    case 3:
                        return new ObfuscatedString(new long[]{-2127186350437638933L, 3947311321084431334L, 2113326434759465114L}).toString();
                    case 4:
                        return new ObfuscatedString(new long[]{-4020747597948596467L, -8049483282772732649L, 2874205207430105368L}).toString();
                    case 5:
                        return new ObfuscatedString(new long[]{1521198800396397534L, -1985795227025506901L, 6933996063921842926L}).toString();
                    case 6:
                        return new ObfuscatedString(new long[]{5921425143533819339L, -3004202007275602684L, 371631782499431522L, -2293932086287686518L}).toString();
                    case 7:
                        return new ObfuscatedString(new long[]{6468050613285793227L, -7907785496388740932L, 8181764353593643256L}).toString();
                    case 8:
                        return new ObfuscatedString(new long[]{7333677913887717618L, 2747931070561531104L, 6169428119823921192L}).toString();
                    case 9:
                        return new ObfuscatedString(new long[]{4060409309184691703L, 3261041745705837701L, -1411921757584983885L}).toString();
                    case 10:
                        return new ObfuscatedString(new long[]{4945394821606015218L, 8859156966048418472L, -5602162594359929095L}).toString();
                    case 11:
                        return new ObfuscatedString(new long[]{-1475016445705664154L, 1291280984381606929L, 1495012949476451060L, 1566154880219954854L}).toString();
                    default:
                        switch (i) {
                            case 13:
                                return new ObfuscatedString(new long[]{8145151729130847897L, 8669614791175861460L}).toString();
                            case 14:
                                return new ObfuscatedString(new long[]{5241672922985072487L, -7984687096726806597L}).toString();
                            case 15:
                                return new ObfuscatedString(new long[]{948850122852658720L, 1464899548610643454L, -7666751610905071500L}).toString();
                            case 16:
                                return new ObfuscatedString(new long[]{-3611661516609656161L, -6385314975003096852L, 8825961809310526486L}).toString();
                            case 17:
                                return new ObfuscatedString(new long[]{1760642265921400118L, 2436894169113034609L, -5912031744614864498L}).toString();
                            case 18:
                                return new ObfuscatedString(new long[]{-2231040689447149253L, 4212779865346690138L, 388001651372513972L}).toString();
                            case 19:
                                return new ObfuscatedString(new long[]{9121732083859878426L, 9093488218815229360L, -1607935241696679413L, -6406186667000561187L, 7499390880862710413L}).toString();
                            case 20:
                                return new ObfuscatedString(new long[]{-3169646951126858028L, -5211174918510436994L, 493900353352428338L, 5231356841931453323L}).toString();
                            case 21:
                                return new ObfuscatedString(new long[]{-6003787438578311134L, 685485011562260239L, -4698624900414996710L, 7301601857031273709L, 5682950888766731118L}).toString();
                            case 22:
                                return new ObfuscatedString(new long[]{-8898718971086258478L, -4814304675336103546L, 1181398583281196863L, -2591248803097144196L, 3855920693700215092L}).toString();
                            case 23:
                                return new ObfuscatedString(new long[]{-6308166704551042311L, 8382347392811475659L, -4607499889628719713L}).toString();
                            case 24:
                                return new ObfuscatedString(new long[]{-2914295385623931727L, 8111144951705360651L, -4603908070888068883L, 439562988244112921L, 5177045006724781434L}).toString();
                            default:
                                StringBuilder sb = new StringBuilder();
                                sb.append(new ObfuscatedString(new long[]{5001729354171310438L, 8110721366855622544L, -7550867927333339107L, -4014887006293752956L}).toString());
                                sb.append(i);
                                return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{93555861970840224L, -7230621951555796327L}), sb);
                        }
                }
            }
            return new ObfuscatedString(new long[]{7631641894108907411L, 8707894134658639944L, -1651566444431933627L, -7868614121869574044L, -8663691896258010750L}).toString();
        }
        return new ObfuscatedString(new long[]{3332276163890845415L, -7489917504083516451L, -5952677487398326753L}).toString();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        if (this.zzb == connectionResult.zzb && Objects.equal(this.zzc, connectionResult.zzc) && Objects.equal(this.zzd, connectionResult.zzd)) {
            return true;
        }
        return false;
    }

    public int getErrorCode() {
        return this.zzb;
    }

    @Nullable
    public String getErrorMessage() {
        return this.zzd;
    }

    @Nullable
    public PendingIntent getResolution() {
        return this.zzc;
    }

    public boolean hasResolution() {
        return (this.zzb == 0 || this.zzc == null) ? false : true;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public boolean isSuccess() {
        return this.zzb == 0;
    }

    public void startResolutionForResult(@NonNull Activity activity, int i) {
        if (!hasResolution()) {
            return;
        }
        PendingIntent pendingIntent = this.zzc;
        Preconditions.checkNotNull(pendingIntent);
        activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
    }

    @NonNull
    public String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.add(new ObfuscatedString(new long[]{1450424917402095219L, 3156709215293279270L, -8031122420152866490L}).toString(), zza(this.zzb));
        stringHelper.add(new ObfuscatedString(new long[]{929189238396367210L, 7987542294011629385L, 3398446750809631734L}).toString(), this.zzc);
        stringHelper.add(new ObfuscatedString(new long[]{-2191948448414833251L, 1660779521605730672L}).toString(), this.zzd);
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int i2 = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeInt(parcel, 2, getErrorCode());
        SafeParcelWriter.writeParcelable(parcel, 3, getResolution(), i, false);
        SafeParcelWriter.writeString(parcel, 4, getErrorMessage(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    public ConnectionResult(int i, @Nullable PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, @Nullable PendingIntent pendingIntent, @Nullable String str) {
        this(1, i, pendingIntent, str);
    }
}
