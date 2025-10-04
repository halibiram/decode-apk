package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes2.dex */
public abstract class FastJsonResponse {

    @ShowFirstParty
    /* loaded from: classes2.dex */
    public interface FieldConverter<I, O> {
        int zaa();

        int zab();

        @Nullable
        O zac(@NonNull I i);

        @NonNull
        I zad(@NonNull O o);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static final <O, I> I zaD(@NonNull Field<I, O> field, @Nullable Object obj) {
        if (((Field) field).zak != null) {
            return field.zaf(obj);
        }
        return obj;
    }

    private final <I, O> void zaE(Field<I, O> field, @Nullable I i) {
        String str = field.zae;
        O zae = field.zae(i);
        int i2 = field.zac;
        switch (i2) {
            case 0:
                if (zae != null) {
                    setIntegerInternal(field, str, ((Integer) zae).intValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 1:
                zaf(field, str, (BigInteger) zae);
                return;
            case 2:
                if (zae != null) {
                    setLongInternal(field, str, ((Long) zae).longValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 3:
            default:
                throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8973313847395431274L, 6141547756331443058L, 7723896870096495356L, -7504418271555504440L, 1894882922415152021L, 5390898909924424132L}), new StringBuilder(44), i2));
            case 4:
                if (zae != null) {
                    zan(field, str, ((Double) zae).doubleValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 5:
                zab(field, str, (BigDecimal) zae);
                return;
            case 6:
                if (zae != null) {
                    setBooleanInternal(field, str, ((Boolean) zae).booleanValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 7:
                setStringInternal(field, str, (String) zae);
                return;
            case 8:
            case 9:
                if (zae != null) {
                    setDecodedBytesInternal(field, str, (byte[]) zae);
                    return;
                } else {
                    zaG(str);
                    return;
                }
        }
    }

    private static final void zaF(StringBuilder sb, Field field, Object obj) {
        int i = field.zaa;
        if (i != 11) {
            if (i == 7) {
                sb.append(new ObfuscatedString(new long[]{-3986420233638722758L, 6680852983714283892L}).toString());
                sb.append(JsonUtils.escapeString((String) obj));
                sb.append(new ObfuscatedString(new long[]{-1257428801559387398L, -7543432565786139281L}).toString());
                return;
            }
            sb.append(obj);
            return;
        }
        Class<? extends FastJsonResponse> cls = field.zag;
        Preconditions.checkNotNull(cls);
        sb.append(cls.cast(obj).toString());
    }

    private static final <O> void zaG(String str) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{5059053538074706189L, -3288183217815881362L, -6133638762865122262L}).toString(), 6)) {
            new StringBuilder(String.valueOf(str).length() + 58);
            new ObfuscatedString(new long[]{8434258132070361881L, -9012767234754621366L, 2232840008947462454L}).toString();
            new ObfuscatedString(new long[]{7451495695978520068L, -3669530032851352934L, -5461397735845526973L, -2177283513400010077L, 1232898630822733703L, 1570040642927567716L, -2603471804841222640L}).toString();
            new ObfuscatedString(new long[]{-1516264084577852924L, -5659268968835239870L, -2107116519348256201L}).toString();
        }
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(@NonNull Field field, @NonNull String str, @Nullable ArrayList<T> arrayList) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8473804305667623296L, 1505134820068568292L, -3807040758478024273L, -2689319057039240341L, -8838295674386143347L, -8657699279378266568L}).toString());
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeInternal(@NonNull Field field, @NonNull String str, @NonNull T t) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3116200324479050643L, 2124548351281315919L, 8069831986735849039L, -2571793037717035247L, -1255560807037564831L}).toString());
    }

    @NonNull
    @KeepForSdk
    public abstract Map<String, Field<?, ?>> getFieldMappings();

    @Nullable
    @KeepForSdk
    public Object getFieldValue(@NonNull Field field) {
        boolean z;
        String str = field.zae;
        if (field.zag != null) {
            if (getValueObject(str) == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{-7611200992414377656L, -8952267207728356246L, -3864733546666431934L, -3980899063014535298L, -8708629015388701878L, -3556904128526101867L, -489654318509820855L}).toString(), field.zae);
            try {
                char upperCase = Character.toUpperCase(str.charAt(0));
                String substring = str.substring(1);
                StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
                sb.append(new ObfuscatedString(new long[]{349208967731892302L, -5151977088221411732L}).toString());
                sb.append(upperCase);
                sb.append(substring);
                return getClass().getMethod(sb.toString(), null).invoke(this, null);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return getValueObject(str);
    }

    @Nullable
    @KeepForSdk
    public abstract Object getValueObject(@NonNull String str);

    @KeepForSdk
    public boolean isFieldSet(@NonNull Field field) {
        if (field.zac == 11) {
            if (field.zad) {
                throw new UnsupportedOperationException(new ObfuscatedString(new long[]{8471048473324683778L, 777914749888347990L, 209821086530248955L, 301714663376483261L, 1421515291409285010L, 4008871318915113128L}).toString());
            }
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{4145019904076912966L, 5627552800966962209L, 6123115946484747731L, 8205154787249745147L, 399319180274881548L}).toString());
        }
        return isPrimitiveFieldSet(field.zae);
    }

    @KeepForSdk
    public abstract boolean isPrimitiveFieldSet(@NonNull String str);

    @KeepForSdk
    public void setBooleanInternal(@NonNull Field<?, ?> field, @NonNull String str, boolean z) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{1073786974934365422L, -2778321064831300092L, -3616620067854153342L, 7894957893284202359L}).toString());
    }

    @KeepForSdk
    public void setDecodedBytesInternal(@NonNull Field<?, ?> field, @NonNull String str, @Nullable byte[] bArr) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{5874928236740314218L, -466675668048643155L, -9037216529647503869L, -2098434842626880900L}).toString());
    }

    @KeepForSdk
    public void setIntegerInternal(@NonNull Field<?, ?> field, @NonNull String str, int i) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-7123738058983143821L, 9024548501080972566L, 7007635296423085805L, -5731036295420168121L}).toString());
    }

    @KeepForSdk
    public void setLongInternal(@NonNull Field<?, ?> field, @NonNull String str, long j) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-2723025543636916167L, 3335482238632216727L, 1308794043367880702L, 3199182576840738239L}).toString());
    }

    @KeepForSdk
    public void setStringInternal(@NonNull Field<?, ?> field, @NonNull String str, @Nullable String str2) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-2537314565129784333L, 2363001211511230115L, -7690633823882116616L, 1937025681445878632L}).toString());
    }

    @KeepForSdk
    public void setStringMapInternal(@NonNull Field<?, ?> field, @NonNull String str, @Nullable Map<String, String> map) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{2590494638315185293L, 7838628844588961037L, 8930015632463067699L, 7195872518074334548L}).toString());
    }

    @KeepForSdk
    public void setStringsInternal(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<String> arrayList) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3606123409859916389L, -3313999197332971913L, -2927285821710061047L, 6768822567339042537L, -3896463761181583008L}).toString());
    }

    @NonNull
    @KeepForSdk
    public String toString() {
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str);
            if (isFieldSet(field)) {
                Object zaD = zaD(field, getFieldValue(field));
                if (sb.length() == 0) {
                    sb.append(new ObfuscatedString(new long[]{-7900688743967387409L, -2150908247885218037L}).toString());
                } else {
                    sb.append(new ObfuscatedString(new long[]{2437299315970812498L, 7881030881957247634L}).toString());
                }
                sb.append(new ObfuscatedString(new long[]{1988601585639422984L, -3179249515875397474L}).toString());
                sb.append(str);
                sb.append(new ObfuscatedString(new long[]{-4063498933641733059L, -9172628232972968312L}).toString());
                if (zaD == null) {
                    sb.append(new ObfuscatedString(new long[]{-8853475147913486115L, -7482105844823200342L}).toString());
                } else {
                    switch (field.zac) {
                        case 8:
                            sb.append(new ObfuscatedString(new long[]{-2971710790246756743L, 1400185945428661880L}).toString());
                            sb.append(Base64Utils.encode((byte[]) zaD));
                            sb.append(new ObfuscatedString(new long[]{-2602716629424238857L, 7773734589762808134L}).toString());
                            break;
                        case 9:
                            sb.append(new ObfuscatedString(new long[]{-6712346966962863795L, 3292568791843909139L}).toString());
                            sb.append(Base64Utils.encodeUrlSafe((byte[]) zaD));
                            sb.append(new ObfuscatedString(new long[]{-1194421974477547985L, -3016473721287576882L}).toString());
                            break;
                        case 10:
                            MapUtils.writeStringMapToJson(sb, (HashMap) zaD);
                            break;
                        default:
                            if (field.zab) {
                                ArrayList arrayList = (ArrayList) zaD;
                                sb.append(new ObfuscatedString(new long[]{1792838134117032584L, -1774129648353520098L}).toString());
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(new ObfuscatedString(new long[]{-2160653215222078986L, 5748497776013331166L}).toString());
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        zaF(sb, field, obj);
                                    }
                                }
                                sb.append(new ObfuscatedString(new long[]{-4907829289873595636L, 3201538927129067370L}).toString());
                                break;
                            } else {
                                zaF(sb, field, zaD);
                                break;
                            }
                    }
                }
            }
        }
        if (sb.length() > 0) {
            sb.append(new ObfuscatedString(new long[]{-7635598812831891457L, -3877386192334949363L}).toString());
        } else {
            sb.append(new ObfuscatedString(new long[]{6282486619888427091L, 8460578132063846506L}).toString());
        }
        return sb.toString();
    }

    public final <O> void zaA(@NonNull Field<String, O> field, @Nullable String str) {
        if (((Field) field).zak != null) {
            zaE(field, str);
        } else {
            setStringInternal(field, field.zae, str);
        }
    }

    public final <O> void zaB(@NonNull Field<Map<String, String>, O> field, @Nullable Map<String, String> map) {
        if (((Field) field).zak != null) {
            zaE(field, map);
        } else {
            setStringMapInternal(field, field.zae, map);
        }
    }

    public final <O> void zaC(@NonNull Field<ArrayList<String>, O> field, @Nullable ArrayList<String> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            setStringsInternal(field, field.zae, arrayList);
        }
    }

    public final <O> void zaa(@NonNull Field<BigDecimal, O> field, @Nullable BigDecimal bigDecimal) {
        if (((Field) field).zak != null) {
            zaE(field, bigDecimal);
        } else {
            zab(field, field.zae, bigDecimal);
        }
    }

    public void zab(@NonNull Field<?, ?> field, @NonNull String str, @Nullable BigDecimal bigDecimal) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8155636663109518398L, -1564202215338633843L, 5567973519212531678L, 3445904310038249128L}).toString());
    }

    public final <O> void zac(@NonNull Field<ArrayList<BigDecimal>, O> field, @Nullable ArrayList<BigDecimal> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zad(field, field.zae, arrayList);
        }
    }

    public void zad(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<BigDecimal> arrayList) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3093307053214448052L, 2925062121805062327L, 6177549225874134453L, 8297450891217378425L, 5604373786758609353L}).toString());
    }

    public final <O> void zae(@NonNull Field<BigInteger, O> field, @Nullable BigInteger bigInteger) {
        if (((Field) field).zak != null) {
            zaE(field, bigInteger);
        } else {
            zaf(field, field.zae, bigInteger);
        }
    }

    public void zaf(@NonNull Field<?, ?> field, @NonNull String str, @Nullable BigInteger bigInteger) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{4517754261498586028L, 8058917716878297169L, 1587540728765801820L, -5859145883484308500L}).toString());
    }

    public final <O> void zag(@NonNull Field<ArrayList<BigInteger>, O> field, @Nullable ArrayList<BigInteger> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zah(field, field.zae, arrayList);
        }
    }

    public void zah(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<BigInteger> arrayList) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8944610583644495003L, -2711740012845401255L, -7775937877805961445L, 8850980939691912804L, -5824472583465008451L}).toString());
    }

    public final <O> void zai(@NonNull Field<Boolean, O> field, boolean z) {
        if (((Field) field).zak != null) {
            zaE(field, Boolean.valueOf(z));
        } else {
            setBooleanInternal(field, field.zae, z);
        }
    }

    public final <O> void zaj(@NonNull Field<ArrayList<Boolean>, O> field, @Nullable ArrayList<Boolean> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zak(field, field.zae, arrayList);
        }
    }

    public void zak(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Boolean> arrayList) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8200922543531447819L, -1597904077521895740L, 8849688105674644099L, 2240256472858002933L, -3780558277951466707L}).toString());
    }

    public final <O> void zal(@NonNull Field<byte[], O> field, @Nullable byte[] bArr) {
        if (((Field) field).zak != null) {
            zaE(field, bArr);
        } else {
            setDecodedBytesInternal(field, field.zae, bArr);
        }
    }

    public final <O> void zam(@NonNull Field<Double, O> field, double d) {
        if (((Field) field).zak != null) {
            zaE(field, Double.valueOf(d));
        } else {
            zan(field, field.zae, d);
        }
    }

    public void zan(@NonNull Field<?, ?> field, @NonNull String str, double d) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-1340920373552013183L, -7123310595123304891L, -4640578835905407657L, 960751860504008756L}).toString());
    }

    public final <O> void zao(@NonNull Field<ArrayList<Double>, O> field, @Nullable ArrayList<Double> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zap(field, field.zae, arrayList);
        }
    }

    public void zap(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Double> arrayList) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{1201265881533562471L, 1359133639156452780L, -1669951817024476563L, -6829132898991714625L, 7372081842359033496L}).toString());
    }

    public final <O> void zaq(@NonNull Field<Float, O> field, float f) {
        if (((Field) field).zak != null) {
            zaE(field, Float.valueOf(f));
        } else {
            zar(field, field.zae, f);
        }
    }

    public void zar(@NonNull Field<?, ?> field, @NonNull String str, float f) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{4251954892441242416L, -7614517569407936371L, -231442542208054542L, -8323644853056565359L}).toString());
    }

    public final <O> void zas(@NonNull Field<ArrayList<Float>, O> field, @Nullable ArrayList<Float> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zat(field, field.zae, arrayList);
        }
    }

    public void zat(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Float> arrayList) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8069767811037959340L, 504904466548825477L, -3799392276616956510L, -1641422156567953076L}).toString());
    }

    public final <O> void zau(@NonNull Field<Integer, O> field, int i) {
        if (((Field) field).zak != null) {
            zaE(field, Integer.valueOf(i));
        } else {
            setIntegerInternal(field, field.zae, i);
        }
    }

    public final <O> void zav(@NonNull Field<ArrayList<Integer>, O> field, @Nullable ArrayList<Integer> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaw(field, field.zae, arrayList);
        }
    }

    public void zaw(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Integer> arrayList) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{5640570335645790538L, 8306932779563296966L, 5873955858821412006L, -3406870094751760967L, 5133178556291123342L}).toString());
    }

    public final <O> void zax(@NonNull Field<Long, O> field, long j) {
        if (((Field) field).zak != null) {
            zaE(field, Long.valueOf(j));
        } else {
            setLongInternal(field, field.zae, j);
        }
    }

    public final <O> void zay(@NonNull Field<ArrayList<Long>, O> field, @Nullable ArrayList<Long> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaz(field, field.zae, arrayList);
        }
    }

    public void zaz(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Long> arrayList) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-5879649148176745123L, -3345502168450024530L, 2632132417029435353L, -1194570970556810988L}).toString());
    }

    @VisibleForTesting
    @SafeParcelable.Class(creator = "FieldCreator")
    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes2.dex */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zaj CREATOR = new zaj();

        @SafeParcelable.Field(getter = "getTypeIn", id = 2)
        protected final int zaa;

        @SafeParcelable.Field(getter = "isTypeInArray", id = 3)
        protected final boolean zab;

        @SafeParcelable.Field(getter = "getTypeOut", id = 4)
        protected final int zac;

        @SafeParcelable.Field(getter = "isTypeOutArray", id = 5)
        protected final boolean zad;

        @NonNull
        @SafeParcelable.Field(getter = "getOutputFieldName", id = 6)
        protected final String zae;

        @SafeParcelable.Field(getter = "getSafeParcelableFieldId", id = 7)
        protected final int zaf;

        @Nullable
        protected final Class<? extends FastJsonResponse> zag;

        @Nullable
        @SafeParcelable.Field(getter = "getConcreteTypeName", id = 8)
        protected final String zah;

        @SafeParcelable.VersionField(getter = "getVersionCode", id = 1)
        private final int zai;
        private zan zaj;

        @Nullable
        @SafeParcelable.Field(getter = "getWrappedConverter", id = 9, type = "com.google.android.gms.common.server.converter.ConverterWrapper")
        private FieldConverter<I, O> zak;

        @SafeParcelable.Constructor
        public Field(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) int i4, @Nullable @SafeParcelable.Param(id = 8) String str2, @Nullable @SafeParcelable.Param(id = 9) com.google.android.gms.common.server.converter.zaa zaaVar) {
            this.zai = i;
            this.zaa = i2;
            this.zab = z;
            this.zac = i3;
            this.zad = z2;
            this.zae = str;
            this.zaf = i4;
            if (str2 == null) {
                this.zag = null;
                this.zah = null;
            } else {
                this.zag = SafeParcelResponse.class;
                this.zah = str2;
            }
            if (zaaVar == null) {
                this.zak = null;
            } else {
                this.zak = (FieldConverter<I, O>) zaaVar.zab();
            }
        }

        @NonNull
        @VisibleForTesting
        @KeepForSdk
        public static Field<byte[], byte[]> forBase64(@NonNull String str, int i) {
            return new Field<>(8, false, 8, false, str, i, null, null);
        }

        @NonNull
        @KeepForSdk
        public static Field<Boolean, Boolean> forBoolean(@NonNull String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        @NonNull
        @KeepForSdk
        public static <T extends FastJsonResponse> Field<T, T> forConcreteType(@NonNull String str, int i, @NonNull Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        @NonNull
        @KeepForSdk
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> forConcreteTypeArray(@NonNull String str, int i, @NonNull Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        @NonNull
        @KeepForSdk
        public static Field<Double, Double> forDouble(@NonNull String str, int i) {
            return new Field<>(4, false, 4, false, str, i, null, null);
        }

        @NonNull
        @KeepForSdk
        public static Field<Float, Float> forFloat(@NonNull String str, int i) {
            return new Field<>(3, false, 3, false, str, i, null, null);
        }

        @NonNull
        @VisibleForTesting
        @KeepForSdk
        public static Field<Integer, Integer> forInteger(@NonNull String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        @NonNull
        @KeepForSdk
        public static Field<Long, Long> forLong(@NonNull String str, int i) {
            return new Field<>(2, false, 2, false, str, i, null, null);
        }

        @NonNull
        @KeepForSdk
        public static Field<String, String> forString(@NonNull String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        @NonNull
        @KeepForSdk
        public static Field<HashMap<String, String>, HashMap<String, String>> forStringMap(@NonNull String str, int i) {
            return new Field<>(10, false, 10, false, str, i, null, null);
        }

        @NonNull
        @KeepForSdk
        public static Field<ArrayList<String>, ArrayList<String>> forStrings(@NonNull String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        @NonNull
        @KeepForSdk
        public static Field withConverter(@NonNull String str, int i, @NonNull FieldConverter<?, ?> fieldConverter, boolean z) {
            fieldConverter.zaa();
            fieldConverter.zab();
            return new Field(7, z, 0, false, str, i, null, fieldConverter);
        }

        @KeepForSdk
        public int getSafeParcelableFieldId() {
            return this.zaf;
        }

        @NonNull
        public final String toString() {
            Objects.ToStringHelper add = Objects.toStringHelper(this).add(new ObfuscatedString(new long[]{8167030583675825419L, 1429775590310396415L, 2243663326388612256L}).toString(), Integer.valueOf(this.zai)).add(new ObfuscatedString(new long[]{-6504672269747926994L, -277310619489489054L}).toString(), Integer.valueOf(this.zaa)).add(new ObfuscatedString(new long[]{-4270765051255020614L, 8044655391088225358L, -3616443018291870884L}).toString(), Boolean.valueOf(this.zab)).add(new ObfuscatedString(new long[]{6521236040350664998L, 5937414656394049695L}).toString(), Integer.valueOf(this.zac)).add(new ObfuscatedString(new long[]{-9080328355528255372L, -1048551974061376392L, -6196126704125703766L}).toString(), Boolean.valueOf(this.zad)).add(new ObfuscatedString(new long[]{3645709084249035150L, 4181124479150940533L, 6176800810186081067L}).toString(), this.zae).add(new ObfuscatedString(new long[]{8196960033434745473L, -5400848164365579681L, 1642792082974302592L, 6161479969230110903L}).toString(), Integer.valueOf(this.zaf)).add(new ObfuscatedString(new long[]{-4626106662933782292L, 6067930991079431121L, 5713894683464015466L}).toString(), zag());
            Class<? extends FastJsonResponse> cls = this.zag;
            if (cls != null) {
                add.add(new ObfuscatedString(new long[]{-3824240270386589100L, -6668202437132810L, 471538735429138391L, 8245930591054007267L}).toString(), cls.getCanonicalName());
            }
            FieldConverter<I, O> fieldConverter = this.zak;
            if (fieldConverter != null) {
                add.add(new ObfuscatedString(new long[]{8124240705635564054L, -135706809204979699L, 5031137196049214696L}).toString(), fieldConverter.getClass().getCanonicalName());
            }
            return add.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@NonNull Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.zai);
            SafeParcelWriter.writeInt(parcel, 2, this.zaa);
            SafeParcelWriter.writeBoolean(parcel, 3, this.zab);
            SafeParcelWriter.writeInt(parcel, 4, this.zac);
            SafeParcelWriter.writeBoolean(parcel, 5, this.zad);
            SafeParcelWriter.writeString(parcel, 6, this.zae, false);
            SafeParcelWriter.writeInt(parcel, 7, getSafeParcelableFieldId());
            SafeParcelWriter.writeString(parcel, 8, zag(), false);
            SafeParcelWriter.writeParcelable(parcel, 9, zaa(), i, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }

        @Nullable
        public final com.google.android.gms.common.server.converter.zaa zaa() {
            FieldConverter<I, O> fieldConverter = this.zak;
            if (fieldConverter == null) {
                return null;
            }
            return com.google.android.gms.common.server.converter.zaa.zaa(fieldConverter);
        }

        @NonNull
        public final Field<I, O> zab() {
            return new Field<>(this.zai, this.zaa, this.zab, this.zac, this.zad, this.zae, this.zaf, this.zah, zaa());
        }

        @NonNull
        public final FastJsonResponse zad() {
            Preconditions.checkNotNull(this.zag);
            Class<? extends FastJsonResponse> cls = this.zag;
            if (cls == SafeParcelResponse.class) {
                Preconditions.checkNotNull(this.zah);
                Preconditions.checkNotNull(this.zaj, new ObfuscatedString(new long[]{-5350734807614322556L, -3871988395988203172L, -1201237029690757668L, -4047599660804506000L, -3382460065939956706L, -2594464270891056498L, 4033898820050962149L, 2401250005920752868L, -147654947732902681L, 3230267145636954369L, 4706344587233769896L, 4358966299811260447L, 3566060169752118105L}).toString());
                return new SafeParcelResponse(this.zaj, this.zah);
            }
            return cls.newInstance();
        }

        @NonNull
        public final O zae(@Nullable I i) {
            Preconditions.checkNotNull(this.zak);
            return (O) Preconditions.checkNotNull(this.zak.zac(i));
        }

        @NonNull
        public final I zaf(@NonNull O o) {
            Preconditions.checkNotNull(this.zak);
            return this.zak.zad(o);
        }

        @Nullable
        public final String zag() {
            String str = this.zah;
            if (str == null) {
                return null;
            }
            return str;
        }

        @NonNull
        public final Map<String, Field<?, ?>> zah() {
            Preconditions.checkNotNull(this.zah);
            Preconditions.checkNotNull(this.zaj);
            return (Map) Preconditions.checkNotNull(this.zaj.zab(this.zah));
        }

        public final void zai(zan zanVar) {
            this.zaj = zanVar;
        }

        public final boolean zaj() {
            return this.zak != null;
        }

        public Field(int i, boolean z, int i2, boolean z2, @NonNull String str, int i3, @Nullable Class<? extends FastJsonResponse> cls, @Nullable FieldConverter<I, O> fieldConverter) {
            this.zai = 1;
            this.zaa = i;
            this.zab = z;
            this.zac = i2;
            this.zad = z2;
            this.zae = str;
            this.zaf = i3;
            this.zag = cls;
            if (cls == null) {
                this.zah = null;
            } else {
                this.zah = cls.getCanonicalName();
            }
            this.zak = fieldConverter;
        }
    }
}
