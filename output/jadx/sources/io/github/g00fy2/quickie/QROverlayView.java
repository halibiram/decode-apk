package io.github.g00fy2.quickie;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import defpackage.AbstractC0975x7c3950e5;
import defpackage.C0396x4a23d5ac;
import defpackage.C0648x4ba9bb0c;
import defpackage.ViewOnClickListenerC0899xca18fbd;
import defpackage.ViewOnClickListenerC1051x76e166e5;
import io.github.g00fy2.quickie.databinding.QuickieOverlayViewBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DebugKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u0000 ;2\u00020\u0001:\u0001;B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ7\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J%\u0010$\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\n2\u000e\b\u0002\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00100\"¢\u0006\u0004\b$\u0010%J+\u0010'\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\n2\u0014\b\u0002\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00100&¢\u0006\u0004\b'\u0010(J+\u0010)\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\n2\u0014\b\u0002\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00100&¢\u0006\u0004\b)\u0010(J\u0015\u0010+\u001a\u00020\u00102\u0006\u0010*\u001a\u00020\n¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0002¢\u0006\u0004\b-\u0010.J\u0013\u00100\u001a\u00020\u0010*\u00020/H\u0002¢\u0006\u0004\b0\u00101R*\u00105\u001a\u00020\n2\u0006\u00102\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u0010,R*\u00109\u001a\u00020\n2\u0006\u00102\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00104\u001a\u0004\b9\u00106\"\u0004\b:\u0010,¨\u0006<"}, d2 = {"Lio/github/g00fy2/quickie/QROverlayView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "changed", "left", "top", "right", "bottom", "", "onLayout", "(ZIIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "stringRes", "setCustomText", "(I)V", "drawableRes", "setCustomIcon", "(Ljava/lang/Integer;)V", "", "ratio", "setHorizontalFrameRatio", "(F)V", "visible", "Lkotlin/Function0;", "action", "setCloseVisibilityAndOnClick", "(ZLkotlin/jvm/functions/Function0;)V", "Lkotlin/Function1;", "setTorchVisibilityAndOnClick", "(ZLkotlin/jvm/functions/Function1;)V", "setGalleryVisibilityAndOnClick", DebugKt.DEBUG_PROPERTY_VALUE_ON, "setTorchState", "(Z)V", "getAccentColor", "()I", "Landroid/view/View;", "setTintAndStateAwareBackground", "(Landroid/view/View;)V", "value", "뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐", "Z", "isHighlighted", "()Z", "setHighlighted", "뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌", "isLoading", "setLoading", "Companion", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nQROverlayView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QROverlayView.kt\nio/github/g00fy2/quickie/QROverlayView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n1#2:233\n*E\n"})
/* loaded from: classes3.dex */
public final class QROverlayView extends FrameLayout {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public final QuickieOverlayViewBinding f1074xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public final int f1075x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public final int f1076x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨 */
    public final int f1077x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨 */
    public final Paint f1078x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤 */
    public final Paint f1079x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋 */
    public final Paint f1080x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두 */
    public final Paint f1081x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷 */
    public final float f1082x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎 */
    public final float f1083x9d12c1f4;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠 */
    public final RectF f1084x1db10c9d;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻 */
    public final RectF f1085xd2bcb0cf;

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁 */
    public Bitmap f1086x8c6fc18a;

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀 */
    public Canvas f1087x1aebc6d9;

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨 */
    public float f1088xab142723;

    /* renamed from: 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐, reason: from kotlin metadata */
    public boolean isHighlighted;

    /* renamed from: 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌, reason: from kotlin metadata */
    public boolean isLoading;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lio/github/g00fy2/quickie/QROverlayView$Companion;", "", "", "BACKGROUND_ALPHA", "D", "BUTTON_BACKGROUND_ALPHA", "", "STROKE_WIDTH", "F", "OUT_RADIUS", "FRAME_MARGIN_RATIO", "ICON_MAX_HEIGHT", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public QROverlayView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final int getAccentColor() {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(android.R.attr.colorAccent, typedValue, true)) {
            return typedValue.data;
        }
        return ContextCompat.getColor(getContext(), R.color.quickie_accent_fallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setCloseVisibilityAndOnClick$default(QROverlayView qROverlayView, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = new C0396x4a23d5ac(25);
        }
        qROverlayView.setCloseVisibilityAndOnClick(z, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setGalleryVisibilityAndOnClick$default(QROverlayView qROverlayView, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new C0648x4ba9bb0c(14);
        }
        qROverlayView.setGalleryVisibilityAndOnClick(z, function1);
    }

    private final void setTintAndStateAwareBackground(View view) {
        Drawable background = view.getBackground();
        if (background != null) {
            Drawable wrap = DrawableCompat.wrap(background);
            Intrinsics.checkNotNullExpressionValue(wrap, "wrap(...)");
            int[][] iArr = {new int[]{android.R.attr.state_pressed, android.R.attr.state_selected}, new int[]{android.R.attr.state_pressed, -16842913}, new int[]{-16842919, android.R.attr.state_selected}, new int[0]};
            int i = this.f1075x3271d0aa;
            int i2 = this.f1076x1378447b;
            ColorStateList withAlpha = new ColorStateList(iArr, new int[]{i, i2, i2, i}).withAlpha(AbstractC0975x7c3950e5.roundToInt(153.0d));
            Intrinsics.checkNotNullExpressionValue(withAlpha, "withAlpha(...)");
            DrawableCompat.setTintList(wrap, withAlpha);
            view.setBackground(wrap);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setTorchVisibilityAndOnClick$default(QROverlayView qROverlayView, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new C0648x4ba9bb0c(13);
        }
        qROverlayView.setTorchVisibilityAndOnClick(z, function1);
    }

    /* renamed from: isHighlighted, reason: from getter */
    public final boolean getIsHighlighted() {
        return this.isHighlighted;
    }

    /* renamed from: isLoading, reason: from getter */
    public final boolean getIsLoading() {
        return this.isLoading;
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        int i;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Paint paint = this.f1079x9e171bf9;
        if (this.isHighlighted) {
            i = this.f1076x1378447b;
        } else {
            i = this.f1075x3271d0aa;
        }
        paint.setColor(i);
        Canvas canvas2 = this.f1087x1aebc6d9;
        Intrinsics.checkNotNull(canvas2);
        canvas2.drawColor(this.f1077x75d576dc);
        Canvas canvas3 = this.f1087x1aebc6d9;
        Intrinsics.checkNotNull(canvas3);
        RectF rectF = this.f1084x1db10c9d;
        float f = this.f1082x3db60231;
        canvas3.drawRoundRect(rectF, f, f, paint);
        Canvas canvas4 = this.f1087x1aebc6d9;
        Intrinsics.checkNotNull(canvas4);
        RectF rectF2 = this.f1085xd2bcb0cf;
        Paint paint2 = this.f1081x95f25580;
        float f2 = this.f1083x9d12c1f4;
        canvas4.drawRoundRect(rectF2, f2, f2, paint2);
        if (this.isLoading) {
            Canvas canvas5 = this.f1087x1aebc6d9;
            Intrinsics.checkNotNull(canvas5);
            canvas5.drawRoundRect(rectF2, f2, f2, this.f1080x34271fae);
        }
        Bitmap bitmap = this.f1086x8c6fc18a;
        Intrinsics.checkNotNull(bitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f1078x9738a56c);
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.f1086x8c6fc18a == null && getWidth() > 0 && getHeight() > 0) {
            Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            this.f1087x1aebc6d9 = new Canvas(createBitmap);
            this.f1086x8c6fc18a = createBitmap;
            m1746xfbe0c504();
        }
    }

    public final void setCloseVisibilityAndOnClick(boolean visible, @NotNull Function0<Unit> action) {
        int i;
        Intrinsics.checkNotNullParameter(action, "action");
        QuickieOverlayViewBinding quickieOverlayViewBinding = this.f1074xfbe0c504;
        AppCompatImageView appCompatImageView = quickieOverlayViewBinding.closeImageView;
        if (visible) {
            i = 0;
        } else {
            i = 8;
        }
        appCompatImageView.setVisibility(i);
        quickieOverlayViewBinding.closeImageView.setOnClickListener(new ViewOnClickListenerC0899xca18fbd(action, 3));
        if (visible) {
            AppCompatImageView closeImageView = quickieOverlayViewBinding.closeImageView;
            Intrinsics.checkNotNullExpressionValue(closeImageView, "closeImageView");
            setTintAndStateAwareBackground(closeImageView);
        }
    }

    public final void setCustomIcon(@Nullable Integer drawableRes) {
        QuickieOverlayViewBinding quickieOverlayViewBinding = this.f1074xfbe0c504;
        if (drawableRes == null) {
            quickieOverlayViewBinding.titleTextView.setCompoundDrawables(null, null, null, null);
            return;
        }
        if (drawableRes.intValue() != 0) {
            try {
                Drawable drawable = ResourcesCompat.getDrawable(getResources(), drawableRes.intValue(), null);
                if (drawable != null) {
                    float applyDimension = TypedValue.applyDimension(1, 56.0f, getResources().getDisplayMetrics()) / drawable.getMinimumHeight();
                    if (applyDimension < 1.0f) {
                        drawable.setBounds(0, 0, AbstractC0975x7c3950e5.roundToInt(drawable.getMinimumWidth() * applyDimension), AbstractC0975x7c3950e5.roundToInt(drawable.getMinimumHeight() * applyDimension));
                    } else {
                        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                    }
                    quickieOverlayViewBinding.titleTextView.setCompoundDrawables(null, drawable, null, null);
                }
            } catch (Resources.NotFoundException unused) {
            }
        }
    }

    public final void setCustomText(int stringRes) {
        if (stringRes != 0) {
            try {
                this.f1074xfbe0c504.titleTextView.setText(stringRes);
            } catch (Resources.NotFoundException unused) {
            }
        }
    }

    public final void setGalleryVisibilityAndOnClick(boolean visible, @NotNull Function1<? super Boolean, Unit> action) {
        int i;
        Intrinsics.checkNotNullParameter(action, "action");
        QuickieOverlayViewBinding quickieOverlayViewBinding = this.f1074xfbe0c504;
        AppCompatImageView appCompatImageView = quickieOverlayViewBinding.galleryImageView;
        if (visible) {
            i = 0;
        } else {
            i = 8;
        }
        appCompatImageView.setVisibility(i);
        quickieOverlayViewBinding.galleryImageView.setOnClickListener(new ViewOnClickListenerC1051x76e166e5(1, action));
        if (visible) {
            AppCompatImageView galleryImageView = quickieOverlayViewBinding.galleryImageView;
            Intrinsics.checkNotNullExpressionValue(galleryImageView, "galleryImageView");
            setTintAndStateAwareBackground(galleryImageView);
        }
    }

    public final void setHighlighted(boolean z) {
        if (this.isHighlighted != z) {
            this.isHighlighted = z;
            invalidate();
        }
    }

    public final void setHorizontalFrameRatio(float ratio) {
        if (ratio > 1.0f) {
            this.f1088xab142723 = ratio;
            m1746xfbe0c504();
        }
    }

    public final void setLoading(boolean z) {
        int i;
        if (this.isLoading != z) {
            this.isLoading = z;
            LinearLayout linearLayout = this.f1074xfbe0c504.progressView;
            if (z) {
                i = 0;
            } else {
                i = 8;
            }
            linearLayout.setVisibility(i);
        }
    }

    public final void setTorchState(boolean r2) {
        this.f1074xfbe0c504.torchImageView.setSelected(r2);
    }

    public final void setTorchVisibilityAndOnClick(boolean visible, @NotNull Function1<? super Boolean, Unit> action) {
        int i;
        Intrinsics.checkNotNullParameter(action, "action");
        QuickieOverlayViewBinding quickieOverlayViewBinding = this.f1074xfbe0c504;
        AppCompatImageView appCompatImageView = quickieOverlayViewBinding.torchImageView;
        if (visible) {
            i = 0;
        } else {
            i = 8;
        }
        appCompatImageView.setVisibility(i);
        quickieOverlayViewBinding.torchImageView.setOnClickListener(new ViewOnClickListenerC1051x76e166e5(0, action));
        if (visible) {
            AppCompatImageView torchImageView = quickieOverlayViewBinding.torchImageView;
            Intrinsics.checkNotNullExpressionValue(torchImageView, "torchImageView");
            setTintAndStateAwareBackground(torchImageView);
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public final void m1746xfbe0c504() {
        int i;
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int min = Math.min(width, height);
        float f = this.f1088xab142723;
        float f2 = 0.25f;
        if (f > 1.0f) {
            f2 = 0.25f * (1.0f / f) * 1.5f;
        }
        float f3 = min;
        float f4 = f3 - (f2 * f3);
        float applyDimension = TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
        RectF rectF = this.f1084x1db10c9d;
        float f5 = width;
        float f6 = height;
        float f7 = f4 / this.f1088xab142723;
        rectF.set(f5 - f4, f6 - f7, f5 + f4, f7 + f6);
        this.f1085xd2bcb0cf.set(rectF.left + applyDimension, rectF.top + applyDimension, rectF.right - applyDimension, rectF.bottom - applyDimension);
        int roundToInt = AbstractC0975x7c3950e5.roundToInt(((-getPaddingTop()) + height) - f4);
        QuickieOverlayViewBinding quickieOverlayViewBinding = this.f1074xfbe0c504;
        int height2 = (roundToInt - quickieOverlayViewBinding.titleTextView.getHeight()) / 2;
        AppCompatTextView titleTextView = quickieOverlayViewBinding.titleTextView;
        Intrinsics.checkNotNullExpressionValue(titleTextView, "titleTextView");
        ViewGroup.LayoutParams layoutParams = titleTextView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.topMargin = height2;
        titleTextView.setLayoutParams(marginLayoutParams);
        AppCompatTextView appCompatTextView = quickieOverlayViewBinding.titleTextView;
        if (roundToInt < appCompatTextView.getHeight()) {
            i = 4;
        } else {
            i = 0;
        }
        appCompatTextView.setVisibility(i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public QROverlayView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ QROverlayView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public QROverlayView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        QuickieOverlayViewBinding inflate = QuickieOverlayViewBinding.inflate(LayoutInflater.from(context), this);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.f1074xfbe0c504 = inflate;
        this.f1075x3271d0aa = ContextCompat.getColor(context, R.color.quickie_gray);
        this.f1076x1378447b = getAccentColor();
        int alphaComponent = ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, AbstractC0975x7c3950e5.roundToInt(196.35d));
        this.f1077x75d576dc = alphaComponent;
        Paint paint = new Paint();
        paint.setAlpha(AbstractC0975x7c3950e5.roundToInt(196.35d));
        this.f1078x9738a56c = paint;
        this.f1079x9e171bf9 = new Paint(1);
        Paint paint2 = new Paint(1);
        paint2.setColor(alphaComponent);
        this.f1080x34271fae = paint2;
        Paint paint3 = new Paint(1);
        paint3.setColor(0);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f1081x95f25580 = paint3;
        this.f1082x3db60231 = TypedValue.applyDimension(1, 16.0f, getResources().getDisplayMetrics());
        this.f1083x9d12c1f4 = TypedValue.applyDimension(1, 12.0f, getResources().getDisplayMetrics());
        this.f1084x1db10c9d = new RectF();
        this.f1085xd2bcb0cf = new RectF();
        this.f1088xab142723 = 1.0f;
        setWillNotDraw(false);
    }
}
