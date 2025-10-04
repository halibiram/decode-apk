package defpackage;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.TypesJVMKt;

/* renamed from: 따뎸듟뒉땠뒵딜뒀땄딞뒋딸뒘딻돶둣뒋뒝든돷딨돝뎸뎽딌되따땳듌돸뎸됫뒉뒙둑든듐땫땯딐둑돤땜듻될땹딽뎹딟될듟됐듌뎹뒨뒈땠됨듐뒵뒼듟따땀땋뎬돳딻뎻둥땫딞땲뎹땩땃뎠듐돳됫딄뒝두딎땰땃뒐딁돵돰딝땹뎠땱듌땍되땰돸땰땄된둠땻듌뎬둠땫됴듸뒤땍뒷돤됩돶듬돸딞땐됨둣뒤땁둘듟돠듔뎻땦, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1019x3c6cde98 implements ParameterizedType, Type {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Class f5220xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Type f5221x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Type[] f5222x1378447b;

    public C1019x3c6cde98(Class rawType, Type type, ArrayList typeArguments) {
        Intrinsics.checkNotNullParameter(rawType, "rawType");
        Intrinsics.checkNotNullParameter(typeArguments, "typeArguments");
        this.f5220xfbe0c504 = rawType;
        this.f5221x3271d0aa = type;
        this.f5222x1378447b = (Type[]) typeArguments.toArray(new Type[0]);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            if (Intrinsics.areEqual(this.f5220xfbe0c504, parameterizedType.getRawType()) && Intrinsics.areEqual(this.f5221x3271d0aa, parameterizedType.getOwnerType())) {
                if (Arrays.equals(this.f5222x1378447b, parameterizedType.getActualTypeArguments())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return this.f5222x1378447b;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f5221x3271d0aa;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f5220xfbe0c504;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        boolean z;
        StringBuilder sb = new StringBuilder();
        Class cls = this.f5220xfbe0c504;
        Type type = this.f5221x3271d0aa;
        if (type != null) {
            sb.append(TypesJVMKt.access$typeToString(type));
            sb.append("$");
            sb.append(cls.getSimpleName());
        } else {
            sb.append(TypesJVMKt.access$typeToString(cls));
        }
        Type[] typeArr = this.f5222x1378447b;
        if (typeArr.length == 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            ArraysKt___ArraysKt.joinTo(typeArr, sb, (r14 & 2) != 0 ? ", " : null, (r14 & 4) != 0 ? "" : "<", (r14 & 8) == 0 ? ">" : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : C1018x45659597.f5219xfbe0c504);
        }
        return sb.toString();
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f5220xfbe0c504.hashCode();
        Type type = this.f5221x3271d0aa;
        if (type != null) {
            i = type.hashCode();
        } else {
            i = 0;
        }
        return (hashCode ^ i) ^ Arrays.hashCode(this.f5222x1378447b);
    }

    public final String toString() {
        return getTypeName();
    }
}
