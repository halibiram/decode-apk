package defpackage;

import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 땜든땠땀땨땭뎠땰딎땋됫뎰땋뒉듽땭땬뒉땜딎땩뒷뒵딠땰딅듨둬땥뒬딸땣듼둡땡땤땫뒤딎둑돶땦땮돝딌뒙돸땡듰뒋뒛땦뎠딞둘돨땡딠땍뒝득땻뎠뒬딜땮뒵땨둡둘듟땫드뎡돶뒋땠땄딟될돰둬뒐땬됨돨딝되돛땜땝뎽듻득땥땔도땪둬뒵땭됐돝땻딨들뒋되땸득듽듽딄도둠땪땧땰뎠땱든땩뒙된뒷땪딌딀됴딟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1136x8d83598e implements Externalizable {
    private static final long serialVersionUID = 0;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public Map f5487xfbe0c504;

    static {
        final DefaultConstructorMarker defaultConstructorMarker = null;
        new Object(defaultConstructorMarker) { // from class: kotlin.collections.builders.SerializedMap$Companion
        };
    }

    private final Object readResolve() {
        return this.f5487xfbe0c504;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        byte readByte = input.readByte();
        if (readByte == 0) {
            int readInt = input.readInt();
            if (readInt >= 0) {
                Map createMapBuilder = AbstractC0961xbc4021d9.createMapBuilder(readInt);
                for (int i = 0; i < readInt; i++) {
                    createMapBuilder.put(input.readObject(), input.readObject());
                }
                this.f5487xfbe0c504 = AbstractC0961xbc4021d9.build(createMapBuilder);
                return;
            }
            throw new InvalidObjectException("Illegal size value: " + readInt + '.');
        }
        throw new InvalidObjectException(AbstractC0362x4440ab85.m2929x9738a56c(readByte, "Unsupported flags value: "));
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput output) {
        Intrinsics.checkNotNullParameter(output, "output");
        output.writeByte(0);
        output.writeInt(this.f5487xfbe0c504.size());
        for (Map.Entry entry : this.f5487xfbe0c504.entrySet()) {
            output.writeObject(entry.getKey());
            output.writeObject(entry.getValue());
        }
    }
}
