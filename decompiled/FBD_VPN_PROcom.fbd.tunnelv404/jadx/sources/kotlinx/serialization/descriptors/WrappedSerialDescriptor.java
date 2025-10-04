package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.ExperimentalSerializationApi;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0097\u0001¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002H\u0097\u0001¢\u0006\u0004\b\f\u0010\rJ\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\b\u001a\u00020\u0007H\u0097\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0097\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0015\u001a\u00020\u00142\u0006\u0010\b\u001a\u00020\u0007H\u0097\u0001¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u00148VX\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\u00148VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b!\u0010 R\u0014\u0010$\u001a\u00020\u00078\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8VX\u0097\u0005¢\u0006\u0006\u001a\u0004\b%\u0010&¨\u0006("}, d2 = {"Lkotlinx/serialization/descriptors/WrappedSerialDescriptor;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "", "serialName", "original", "<init>", "(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V", "", "index", "getElementName", "(I)Ljava/lang/String;", "name", "getElementIndex", "(Ljava/lang/String;)I", "", "", "getElementAnnotations", "(I)Ljava/util/List;", "getElementDescriptor", "(I)Lkotlinx/serialization/descriptors/SerialDescriptor;", "", "isElementOptional", "(I)Z", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Ljava/lang/String;", "getSerialName", "()Ljava/lang/String;", "Lkotlinx/serialization/descriptors/SerialKind;", "getKind", "()Lkotlinx/serialization/descriptors/SerialKind;", "kind", "isNullable", "()Z", "isInline", "getElementsCount", "()I", "elementsCount", "getAnnotations", "()Ljava/util/List;", "annotations", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WrappedSerialDescriptor implements SerialDescriptor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ SerialDescriptor f2554xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final String serialName;

    public WrappedSerialDescriptor(@NotNull String serialName, @NotNull SerialDescriptor original) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(original, "original");
        this.f2554xfbe0c504 = original;
        this.serialName = serialName;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        return this.f2554xfbe0c504.getAnnotations();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    @NotNull
    public List<Annotation> getElementAnnotations(int index) {
        return this.f2554xfbe0c504.getElementAnnotations(index);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    @NotNull
    public SerialDescriptor getElementDescriptor(int index) {
        return this.f2554xfbe0c504.getElementDescriptor(index);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public int getElementIndex(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f2554xfbe0c504.getElementIndex(name);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    @NotNull
    public String getElementName(int index) {
        return this.f2554xfbe0c504.getElementName(index);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.f2554xfbe0c504.getElementsCount();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialKind getKind() {
        return this.f2554xfbe0c504.getKind();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @ExperimentalSerializationApi
    public boolean isElementOptional(int index) {
        return this.f2554xfbe0c504.isElementOptional(index);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.f2554xfbe0c504.isInline();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return this.f2554xfbe0c504.isNullable();
    }
}
