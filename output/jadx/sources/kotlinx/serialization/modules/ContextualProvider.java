package kotlinx.serialization.modules;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0007\bJ&\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00032\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0002H¦\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Lkotlinx/serialization/modules/ContextualProvider;", "", "", "Lkotlinx/serialization/KSerializer;", "typeArgumentsSerializers", "invoke", "(Ljava/util/List;)Lkotlinx/serialization/KSerializer;", "Argless", "WithTypeArguments", "Lkotlinx/serialization/modules/ContextualProvider$Argless;", "Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class ContextualProvider {

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005J&\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00022\u0010\u0010\u0007\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lkotlinx/serialization/modules/ContextualProvider$Argless;", "Lkotlinx/serialization/modules/ContextualProvider;", "Lkotlinx/serialization/KSerializer;", "serializer", "<init>", "(Lkotlinx/serialization/KSerializer;)V", "", "typeArgumentsSerializers", "invoke", "(Ljava/util/List;)Lkotlinx/serialization/KSerializer;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lkotlinx/serialization/KSerializer;", "getSerializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Argless extends ContextualProvider {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final KSerializer serializer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Argless(@NotNull KSerializer<?> serializer) {
            super(null);
            Intrinsics.checkNotNullParameter(serializer, "serializer");
            this.serializer = serializer;
        }

        public boolean equals(@Nullable Object other) {
            if ((other instanceof Argless) && Intrinsics.areEqual(((Argless) other).serializer, this.serializer)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final KSerializer<?> getSerializer() {
            return this.serializer;
        }

        public int hashCode() {
            return this.serializer.hashCode();
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        @NotNull
        public KSerializer<?> invoke(@NotNull List<? extends KSerializer<?>> typeArgumentsSerializers) {
            Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
            return this.serializer;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B8\u0012/\u0010\b\u001a+\u0012\u001d\u0012\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0003¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0002¢\u0006\u0004\b\t\u0010\nJ&\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u00042\u0010\u0010\u0007\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0003H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fR@\u0010\b\u001a+\u0012\u001d\u0012\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0003¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;", "Lkotlinx/serialization/modules/ContextualProvider;", "Lkotlin/Function1;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlin/ParameterName;", "name", "typeArgumentsSerializers", "provider", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "invoke", "(Ljava/util/List;)Lkotlinx/serialization/KSerializer;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lkotlin/jvm/functions/Function1;", "getProvider", "()Lkotlin/jvm/functions/Function1;", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class WithTypeArguments extends ContextualProvider {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final Function1 provider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithTypeArguments(@NotNull Function1<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> provider) {
            super(null);
            Intrinsics.checkNotNullParameter(provider, "provider");
            this.provider = provider;
        }

        @NotNull
        public final Function1<List<? extends KSerializer<?>>, KSerializer<?>> getProvider() {
            return this.provider;
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        @NotNull
        public KSerializer<?> invoke(@NotNull List<? extends KSerializer<?>> typeArgumentsSerializers) {
            Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
            return (KSerializer) this.provider.invoke(typeArgumentsSerializers);
        }
    }

    public ContextualProvider(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @NotNull
    public abstract KSerializer<?> invoke(@NotNull List<? extends KSerializer<?>> typeArgumentsSerializers);
}
