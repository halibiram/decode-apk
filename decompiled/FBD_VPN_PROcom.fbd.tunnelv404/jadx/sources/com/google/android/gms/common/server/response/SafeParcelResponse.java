package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.ArrayUtils;
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
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@VisibleForTesting
@KeepForSdk
@SafeParcelable.Class(creator = "SafeParcelResponseCreator")
/* loaded from: classes2.dex */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new zaq();

    @SafeParcelable.VersionField(getter = "getVersionCode", id = 1)
    private final int zaa;

    @SafeParcelable.Field(getter = "getParcel", id = 2)
    private final Parcel zab;
    private final int zac;

    @SafeParcelable.Field(getter = "getFieldMappingDictionary", id = 3)
    private final zan zad;

    @Nullable
    private final String zae;
    private int zaf;
    private int zag;

    @SafeParcelable.Constructor
    public SafeParcelResponse(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Parcel parcel, @SafeParcelable.Param(id = 3) zan zanVar) {
        this.zaa = i;
        this.zab = (Parcel) Preconditions.checkNotNull(parcel);
        this.zac = 2;
        this.zad = zanVar;
        this.zae = zanVar == null ? null : zanVar.zaa();
        this.zaf = 2;
    }

    @NonNull
    @KeepForSdk
    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse from(@NonNull T t) {
        String str = (String) Preconditions.checkNotNull(t.getClass().getCanonicalName());
        zan zanVar = new zan(t.getClass());
        zaF(zanVar, t);
        zanVar.zac();
        zanVar.zad();
        return new SafeParcelResponse(t, zanVar, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void zaF(zan zanVar, FastJsonResponse fastJsonResponse) {
        String str;
        String str2;
        Class<?> cls = fastJsonResponse.getClass();
        if (!zanVar.zaf(cls)) {
            Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
            zanVar.zae(cls, fieldMappings);
            Iterator<String> it = fieldMappings.keySet().iterator();
            while (it.hasNext()) {
                FastJsonResponse.Field<?, ?> field = fieldMappings.get(it.next());
                Class<? extends FastJsonResponse> cls2 = field.zag;
                if (cls2 != null) {
                    try {
                        zaF(zanVar, cls2.newInstance());
                    } catch (IllegalAccessException e) {
                        String valueOf = String.valueOf(((Class) Preconditions.checkNotNull(field.zag)).getCanonicalName());
                        String obfuscatedString = new ObfuscatedString(new long[]{-4901419410761683650L, -1242425140949077617L, -7106438600423194931L, -9122192160342499151L, 3708570478692278279L}).toString();
                        if (valueOf.length() != 0) {
                            str2 = obfuscatedString.concat(valueOf);
                        } else {
                            str2 = new String(obfuscatedString);
                        }
                        throw new IllegalStateException(str2, e);
                    } catch (InstantiationException e2) {
                        String valueOf2 = String.valueOf(((Class) Preconditions.checkNotNull(field.zag)).getCanonicalName());
                        String obfuscatedString2 = new ObfuscatedString(new long[]{-8250552230685842785L, 4772676577849499565L, 5363551468744033331L, 8582154256440806449L, 972355815166988076L, 8526140925536283122L}).toString();
                        if (valueOf2.length() != 0) {
                            str = obfuscatedString2.concat(valueOf2);
                        } else {
                            str = new String(obfuscatedString2);
                        }
                        throw new IllegalStateException(str, e2);
                    }
                }
            }
        }
    }

    private final void zaG(FastJsonResponse.Field<?, ?> field) {
        if (field.zaf != -1) {
            Parcel parcel = this.zab;
            if (parcel != null) {
                int i = this.zaf;
                if (i != 0) {
                    if (i == 1) {
                        return;
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{8773443391361232138L, -6238376387855276354L, 7928556843691724646L, -3859037750434333950L, -7295904586420759806L, -1995879199091924587L, -2697269831858508791L, 2724542665416758280L, -374390933736850512L, -9147246086490396577L, 6722059575804089073L, -9183566743783170710L, 2499786325822951350L}).toString());
                    }
                } else {
                    this.zag = SafeParcelWriter.beginObjectHeader(parcel);
                    this.zaf = 1;
                    return;
                }
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-7051002034307894077L, 3240534893349317180L, 6285518098768985150L, -2551503078289057270L, -7517748817516825339L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{9002753007278541873L, 4746737493651072282L, -6722844691008972720L, -1062961093457156956L, 9065487798514089965L, -4102038113396405268L, -5371369357854822535L, 7085748299856721501L}).toString());
    }

    private final void zaH(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().getSafeParcelableFieldId(), entry);
        }
        sb.append('{');
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.getFieldId(readHeader));
            if (entry2 != null) {
                if (z) {
                    sb.append(new ObfuscatedString(new long[]{1571593119217093574L, -7116753912149738470L}).toString());
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append(new ObfuscatedString(new long[]{-3138198301945939521L, -1328436151338157432L}).toString());
                sb.append(str);
                sb.append(new ObfuscatedString(new long[]{3391413438308491178L, -2892846825771606227L}).toString());
                if (field.zaj()) {
                    int i = field.zac;
                    switch (i) {
                        case 0:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Integer.valueOf(SafeParcelReader.readInt(parcel, readHeader))));
                            break;
                        case 1:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.createBigInteger(parcel, readHeader)));
                            break;
                        case 2:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Long.valueOf(SafeParcelReader.readLong(parcel, readHeader))));
                            break;
                        case 3:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Float.valueOf(SafeParcelReader.readFloat(parcel, readHeader))));
                            break;
                        case 4:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Double.valueOf(SafeParcelReader.readDouble(parcel, readHeader))));
                            break;
                        case 5:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.createBigDecimal(parcel, readHeader)));
                            break;
                        case 6:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Boolean.valueOf(SafeParcelReader.readBoolean(parcel, readHeader))));
                            break;
                        case 7:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.createString(parcel, readHeader)));
                            break;
                        case 8:
                        case 9:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.createByteArray(parcel, readHeader)));
                            break;
                        case 10:
                            Bundle createBundle = SafeParcelReader.createBundle(parcel, readHeader);
                            HashMap hashMap = new HashMap();
                            for (String str2 : createBundle.keySet()) {
                                hashMap.put(str2, (String) Preconditions.checkNotNull(createBundle.getString(str2)));
                            }
                            zaJ(sb, field, FastJsonResponse.zaD(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{1799006987411655440L, 8762884918356143029L, -1872574222394199828L, -6108033168254868957L, -463306767925558254L, -5043324827610892394L}).toString());
                        default:
                            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3148450709335817538L, -7896742776580209435L, 4028451418337404236L, -8341548468728872492L, -6265596841913135112L}), new StringBuilder(36), i));
                    }
                } else if (field.zad) {
                    sb.append(new ObfuscatedString(new long[]{2966907534511914177L, 8990008551798261698L}).toString());
                    switch (field.zac) {
                        case 0:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createIntArray(parcel, readHeader));
                            break;
                        case 1:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createBigIntegerArray(parcel, readHeader));
                            break;
                        case 2:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createLongArray(parcel, readHeader));
                            break;
                        case 3:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createFloatArray(parcel, readHeader));
                            break;
                        case 4:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createDoubleArray(parcel, readHeader));
                            break;
                        case 5:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createBigDecimalArray(parcel, readHeader));
                            break;
                        case 6:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createBooleanArray(parcel, readHeader));
                            break;
                        case 7:
                            ArrayUtils.writeStringArray(sb, SafeParcelReader.createStringArray(parcel, readHeader));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{2676997118134876832L, -1671233493977594270L, 1181346817632414863L, -5376140511488979142L, 2238450594143297078L, 4494592922113234064L, 5625774170543611103L, 2277605807583417446L, -8307347488728708503L, 4543459735680463497L}).toString());
                        case 11:
                            Parcel[] createParcelArray = SafeParcelReader.createParcelArray(parcel, readHeader);
                            int length = createParcelArray.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(new ObfuscatedString(new long[]{-3655191038584224576L, -4469625157480703940L}).toString());
                                }
                                createParcelArray[i2].setDataPosition(0);
                                zaH(sb, field.zah(), createParcelArray[i2]);
                            }
                            break;
                        default:
                            throw new IllegalStateException(new ObfuscatedString(new long[]{-4937575720204918003L, -290566697491925978L, 2294044384885552981L, 6840436774568644480L}).toString());
                    }
                    sb.append(new ObfuscatedString(new long[]{-2973208192918918271L, 6830876578817016573L}).toString());
                } else {
                    switch (field.zac) {
                        case 0:
                            sb.append(SafeParcelReader.readInt(parcel, readHeader));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.createBigInteger(parcel, readHeader));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.readLong(parcel, readHeader));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.readFloat(parcel, readHeader));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.readDouble(parcel, readHeader));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.createBigDecimal(parcel, readHeader));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.readBoolean(parcel, readHeader));
                            break;
                        case 7:
                            String createString = SafeParcelReader.createString(parcel, readHeader);
                            sb.append(new ObfuscatedString(new long[]{-4400251034236055231L, 2415407557015817472L}).toString());
                            sb.append(JsonUtils.escapeString(createString));
                            sb.append(new ObfuscatedString(new long[]{8152852573942178824L, -1784417806515920385L}).toString());
                            break;
                        case 8:
                            byte[] createByteArray = SafeParcelReader.createByteArray(parcel, readHeader);
                            sb.append(new ObfuscatedString(new long[]{-7608527583802158896L, 6568220383900570402L}).toString());
                            sb.append(Base64Utils.encode(createByteArray));
                            sb.append(new ObfuscatedString(new long[]{6732349710398266639L, 856736467666890666L}).toString());
                            break;
                        case 9:
                            byte[] createByteArray2 = SafeParcelReader.createByteArray(parcel, readHeader);
                            sb.append(new ObfuscatedString(new long[]{3368392949941025049L, 379744235472715992L}).toString());
                            sb.append(Base64Utils.encodeUrlSafe(createByteArray2));
                            sb.append(new ObfuscatedString(new long[]{-2611218676373676122L, 4051149822639773108L}).toString());
                            break;
                        case 10:
                            Bundle createBundle2 = SafeParcelReader.createBundle(parcel, readHeader);
                            Set<String> keySet = createBundle2.keySet();
                            sb.append(new ObfuscatedString(new long[]{-1205591192336409472L, 6195658739870743098L}).toString());
                            boolean z2 = true;
                            for (String str3 : keySet) {
                                if (!z2) {
                                    sb.append(new ObfuscatedString(new long[]{1336523626248420378L, -7291632297033709020L}).toString());
                                }
                                sb.append(new ObfuscatedString(new long[]{-8702571561312827864L, 7047576453991326388L}).toString());
                                sb.append(str3);
                                sb.append(new ObfuscatedString(new long[]{7849331801085052190L, -6371365609740384879L}).toString());
                                sb.append(JsonUtils.escapeString(createBundle2.getString(str3)));
                                sb.append(new ObfuscatedString(new long[]{-8898650468319979741L, 8027368797881637803L}).toString());
                                z2 = false;
                            }
                            sb.append(new ObfuscatedString(new long[]{3588078376878853729L, 7885343980591612292L}).toString());
                            break;
                        case 11:
                            Parcel createParcel = SafeParcelReader.createParcel(parcel, readHeader);
                            createParcel.setDataPosition(0);
                            zaH(sb, field.zah(), createParcel);
                            break;
                        default:
                            throw new IllegalStateException(new ObfuscatedString(new long[]{-8467017365831010257L, 521573760449885562L, -4392090569906955528L, 4799073764493086647L}).toString());
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == validateObjectHeader) {
            sb.append('}');
        } else {
            throw new SafeParcelReader.ParseException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{6257328421098568371L, 8947065882676403609L, 5024257380709799558L, -8062440718534520834L, -5034206820737527452L}), new StringBuilder(37), validateObjectHeader), parcel);
        }
    }

    private static final void zaI(StringBuilder sb, int i, @Nullable Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append(new ObfuscatedString(new long[]{-6802861819927918484L, 7621576485496760690L}).toString());
                sb.append(JsonUtils.escapeString(Preconditions.checkNotNull(obj).toString()));
                sb.append(new ObfuscatedString(new long[]{4220593811129838735L, 7483635265794794206L}).toString());
                return;
            case 8:
                sb.append(new ObfuscatedString(new long[]{6654752901099359182L, 5390074520764633464L}).toString());
                sb.append(Base64Utils.encode((byte[]) obj));
                sb.append(new ObfuscatedString(new long[]{3644120924551928179L, -6107407767942590879L}).toString());
                return;
            case 9:
                sb.append(new ObfuscatedString(new long[]{3170727689136260869L, -5819369001036272438L}).toString());
                sb.append(Base64Utils.encodeUrlSafe((byte[]) obj));
                sb.append(new ObfuscatedString(new long[]{1533907614493369611L, 7560686425337189051L}).toString());
                return;
            case 10:
                MapUtils.writeStringMapToJson(sb, (HashMap) Preconditions.checkNotNull(obj));
                return;
            case 11:
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{8642644017751981025L, 4302259056090095730L, -5225945704597587660L, -4205619822926779500L, -909543758543880499L, -4489478611538139018L}).toString());
            default:
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{105055611802873482L, -2449089726771621476L, 1571855215799715722L}), new StringBuilder(26), i));
        }
    }

    private static final void zaJ(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.zab) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append(new ObfuscatedString(new long[]{2037402766227852720L, -8633804645960281695L}).toString());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    sb.append(new ObfuscatedString(new long[]{241643133222139813L, -8138633184740860197L}).toString());
                }
                zaI(sb, field.zaa, arrayList.get(i));
            }
            sb.append(new ObfuscatedString(new long[]{111999706072690234L, -1057481526462123299L}).toString());
            return;
        }
        zaI(sb, field.zaa, obj);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeArrayInternal(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList<T> arrayList) {
        zaG((FastJsonResponse.Field<?, ?>) field);
        ArrayList arrayList2 = new ArrayList();
        ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add(((SafeParcelResponse) arrayList.get(i)).zaE());
        }
        SafeParcelWriter.writeParcelList(this.zab, field.getSafeParcelableFieldId(), arrayList2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeInternal(@NonNull FastJsonResponse.Field field, @NonNull String str, @NonNull T t) {
        zaG((FastJsonResponse.Field<?, ?>) field);
        SafeParcelWriter.writeParcel(this.zab, field.getSafeParcelableFieldId(), ((SafeParcelResponse) t).zaE(), true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @Nullable
    public final Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        zan zanVar = this.zad;
        if (zanVar == null) {
            return null;
        }
        return zanVar.zab((String) Preconditions.checkNotNull(this.zae));
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    @NonNull
    public final Object getValueObject(@NonNull String str) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3195697386627241251L, 7940786411318049441L, -8852625525787500047L, 912444846942754796L, 722526605273375988L, 6210210115791661215L, 5854513854708825992L}).toString());
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isPrimitiveFieldSet(@NonNull String str) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{6943908996214747723L, -5278689804381411548L, -1341222619000269218L, -3199361799811780271L, -956180834853980183L, 1517437068570411450L, 4540441575447658973L}).toString());
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setBooleanInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, boolean z) {
        zaG(field);
        SafeParcelWriter.writeBoolean(this.zab, field.getSafeParcelableFieldId(), z);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setDecodedBytesInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable byte[] bArr) {
        zaG(field);
        SafeParcelWriter.writeByteArray(this.zab, field.getSafeParcelableFieldId(), bArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setIntegerInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, int i) {
        zaG(field);
        SafeParcelWriter.writeInt(this.zab, field.getSafeParcelableFieldId(), i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setLongInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, long j) {
        zaG(field);
        SafeParcelWriter.writeLong(this.zab, field.getSafeParcelableFieldId(), j);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setStringInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable String str2) {
        zaG(field);
        SafeParcelWriter.writeString(this.zab, field.getSafeParcelableFieldId(), str2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setStringMapInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable Map<String, String> map) {
        zaG(field);
        Bundle bundle = new Bundle();
        for (String str2 : ((Map) Preconditions.checkNotNull(map)).keySet()) {
            bundle.putString(str2, map.get(str2));
        }
        SafeParcelWriter.writeBundle(this.zab, field.getSafeParcelableFieldId(), bundle, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setStringsInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<String> arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = arrayList.get(i);
        }
        SafeParcelWriter.writeStringArray(this.zab, field.getSafeParcelableFieldId(), strArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @NonNull
    public final String toString() {
        Preconditions.checkNotNull(this.zad, new ObfuscatedString(new long[]{-9182325263022788535L, -7081946968171612839L, -9223011894191118025L, -7121945666174201906L, -2896324560843842934L, 6289179603356762547L}).toString());
        Parcel zaE = zaE();
        zaE.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zaH(sb, (Map) Preconditions.checkNotNull(this.zad.zab((String) Preconditions.checkNotNull(this.zae))), zaE);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        zan zanVar;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcel(parcel, 2, zaE(), false);
        int i2 = this.zac;
        if (i2 != 0) {
            if (i2 != 1) {
                zanVar = this.zad;
            } else {
                zanVar = this.zad;
            }
        } else {
            zanVar = null;
        }
        SafeParcelWriter.writeParcelable(parcel, 3, zanVar, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @NonNull
    public final Parcel zaE() {
        int i = this.zaf;
        if (i != 0) {
            if (i == 1) {
                SafeParcelWriter.finishObjectHeader(this.zab, this.zag);
                this.zaf = 2;
            }
        } else {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(this.zab);
            this.zag = beginObjectHeader;
            SafeParcelWriter.finishObjectHeader(this.zab, beginObjectHeader);
            this.zaf = 2;
        }
        return this.zab;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zab(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable BigDecimal bigDecimal) {
        zaG(field);
        SafeParcelWriter.writeBigDecimal(this.zab, field.getSafeParcelableFieldId(), bigDecimal, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zad(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<BigDecimal> arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i = 0; i < size; i++) {
            bigDecimalArr[i] = arrayList.get(i);
        }
        SafeParcelWriter.writeBigDecimalArray(this.zab, field.getSafeParcelableFieldId(), bigDecimalArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zaf(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable BigInteger bigInteger) {
        zaG(field);
        SafeParcelWriter.writeBigInteger(this.zab, field.getSafeParcelableFieldId(), bigInteger, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zah(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<BigInteger> arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i = 0; i < size; i++) {
            bigIntegerArr[i] = arrayList.get(i);
        }
        SafeParcelWriter.writeBigIntegerArray(this.zab, field.getSafeParcelableFieldId(), bigIntegerArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zak(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Boolean> arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = arrayList.get(i).booleanValue();
        }
        SafeParcelWriter.writeBooleanArray(this.zab, field.getSafeParcelableFieldId(), zArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zan(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, double d) {
        zaG(field);
        SafeParcelWriter.writeDouble(this.zab, field.getSafeParcelableFieldId(), d);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zap(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Double> arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = arrayList.get(i).doubleValue();
        }
        SafeParcelWriter.writeDoubleArray(this.zab, field.getSafeParcelableFieldId(), dArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zar(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, float f) {
        zaG(field);
        SafeParcelWriter.writeFloat(this.zab, field.getSafeParcelableFieldId(), f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zat(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Float> arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = arrayList.get(i).floatValue();
        }
        SafeParcelWriter.writeFloatArray(this.zab, field.getSafeParcelableFieldId(), fArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zaw(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Integer> arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = arrayList.get(i).intValue();
        }
        SafeParcelWriter.writeIntArray(this.zab, field.getSafeParcelableFieldId(), iArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void zaz(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Long> arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = arrayList.get(i).longValue();
        }
        SafeParcelWriter.writeLongArray(this.zab, field.getSafeParcelableFieldId(), jArr, true);
    }

    private SafeParcelResponse(SafeParcelable safeParcelable, zan zanVar, String str) {
        this.zaa = 1;
        Parcel obtain = Parcel.obtain();
        this.zab = obtain;
        safeParcelable.writeToParcel(obtain, 0);
        this.zac = 1;
        this.zad = (zan) Preconditions.checkNotNull(zanVar);
        this.zae = (String) Preconditions.checkNotNull(str);
        this.zaf = 2;
    }

    public SafeParcelResponse(zan zanVar, String str) {
        this.zaa = 1;
        this.zab = Parcel.obtain();
        this.zac = 0;
        this.zad = (zan) Preconditions.checkNotNull(zanVar);
        this.zae = (String) Preconditions.checkNotNull(str);
        this.zaf = 0;
    }
}
