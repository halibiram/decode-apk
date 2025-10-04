package defpackage;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.text.Typography;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;

/* renamed from: 둬둔됫땮땣딐듐돤두뒛뒉득듽땫뒀듨땳딜땨돶딅돳땩뒼돨뎻땯땧땡뒋듽땄되둣땭듌듽땁땹땯땻땄땡땅듬되도땡뎬땲듨땳뒐둠돨둠되따둡땯딹땡듟땸땰뎬딜둠되땤됴돴뒈뎸땯돰땸듰땝두돴땳둥땦돰땡돛딎딟도딝둠돤땰땫뒵득딤듌땜뎽땩땮땋딁뒤땀뎸땲딄딅두득듼딄됫땄돳뎻딃땁돨득딎딃땰디둣돴뒼, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0644x42e680ea implements SerialDescriptor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final SerialDescriptor f4435xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final KClass f4436x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final String f4437x1378447b;

    public C0644x42e680ea(SerialDescriptor original, KClass kClass) {
        Intrinsics.checkNotNullParameter(original, "original");
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        this.f4435xfbe0c504 = original;
        this.f4436x3271d0aa = kClass;
        this.f4437x1378447b = original.getSerialName() + Typography.less + kClass.getSimpleName() + Typography.greater;
    }

    public final boolean equals(Object obj) {
        C0644x42e680ea c0644x42e680ea;
        if (obj instanceof C0644x42e680ea) {
            c0644x42e680ea = (C0644x42e680ea) obj;
        } else {
            c0644x42e680ea = null;
        }
        if (c0644x42e680ea == null || !Intrinsics.areEqual(this.f4435xfbe0c504, c0644x42e680ea.f4435xfbe0c504) || !Intrinsics.areEqual(c0644x42e680ea.f4436x3271d0aa, this.f4436x3271d0aa)) {
            return false;
        }
        return true;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List getAnnotations() {
        return this.f4435xfbe0c504.getAnnotations();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List getElementAnnotations(int i) {
        return this.f4435xfbe0c504.getElementAnnotations(i);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor getElementDescriptor(int i) {
        return this.f4435xfbe0c504.getElementDescriptor(i);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementIndex(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f4435xfbe0c504.getElementIndex(name);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String getElementName(int i) {
        return this.f4435xfbe0c504.getElementName(i);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementsCount() {
        return this.f4435xfbe0c504.getElementsCount();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialKind getKind() {
        return this.f4435xfbe0c504.getKind();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String getSerialName() {
        return this.f4437x1378447b;
    }

    public final int hashCode() {
        return this.f4437x1378447b.hashCode() + (this.f4436x3271d0aa.hashCode() * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean isElementOptional(int i) {
        return this.f4435xfbe0c504.isElementOptional(i);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* renamed from: isInline */
    public final boolean getIsInline() {
        return this.f4435xfbe0c504.getIsInline();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean isNullable() {
        return this.f4435xfbe0c504.isNullable();
    }

    public final String toString() {
        return "ContextDescriptor(kClass: " + this.f4436x3271d0aa + ", original: " + this.f4435xfbe0c504 + ')';
    }
}
