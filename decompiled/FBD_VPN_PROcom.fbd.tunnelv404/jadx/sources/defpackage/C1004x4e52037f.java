package defpackage;

import junit.framework.Protectable;
import junit.framework.TestCase;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* renamed from: 딠땸득땝땭된딠딎둡뎹땸뒈듐딅뎻둑땔듽뒋될땮뎡딹땰땔땮땜뒛땱듻된돤땩뒻돨딄돝딁둬땩듰딁따뒝땱딟딽듟두듬딠돵뒛땝땥땪딨둔따돳따땃딟딹딄땳땩뒛됫듌딞딠도둥듨땟딠땱딎뒛뎨되뒐듔뒉땻뎬딐땄될뎬땣딠뒙땫땍돳둣됫디땻땡듌딨둬뒻땳득둑돶되뒛땝둡듟돼듔뎻땬뒨딎땭딠들땱돛딌둠딅둥, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1004x4e52037f implements ReadWriteProperty, Protectable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5197xfbe0c504 = 0;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public Object f5198x3271d0aa;

    public /* synthetic */ C1004x4e52037f() {
    }

    @Override // kotlin.properties.ReadWriteProperty, kotlin.properties.ReadOnlyProperty
    public Object getValue(Object obj, KProperty property) {
        Intrinsics.checkNotNullParameter(property, "property");
        Object obj2 = this.f5198x3271d0aa;
        if (obj2 != null) {
            return obj2;
        }
        throw new IllegalStateException("Property " + property.getName() + " should be initialized before get.");
    }

    @Override // junit.framework.Protectable
    public void protect() {
        ((TestCase) this.f5198x3271d0aa).runBare();
    }

    @Override // kotlin.properties.ReadWriteProperty
    public void setValue(Object obj, KProperty property, Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f5198x3271d0aa = value;
    }

    public String toString() {
        String str;
        switch (this.f5197xfbe0c504) {
            case 0:
                StringBuilder sb = new StringBuilder("NotNullProperty(");
                if (this.f5198x3271d0aa != null) {
                    str = "value=" + this.f5198x3271d0aa;
                } else {
                    str = "value not initialized yet";
                }
                sb.append(str);
                sb.append(')');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public C1004x4e52037f(TestCase testCase) {
        this.f5198x3271d0aa = testCase;
    }
}
