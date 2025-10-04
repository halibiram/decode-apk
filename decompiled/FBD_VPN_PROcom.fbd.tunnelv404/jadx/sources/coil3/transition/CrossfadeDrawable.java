package coil3.transition;

import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import coil3.decode.DecodeUtils;
import coil3.size.Scale;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0975x7c3950e5;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b \u0018\u0000 j2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001jBE\b\u0007\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0017¢\u0006\u0004\b\u0019\u0010\u0015J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001e\u001a\u00020\u00112\b\u0010\u001d\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020 H\u0014¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\nH\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\n2\u0006\u0010'\u001a\u00020&H\u0014¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020\bH\u0014¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\bH\u0016¢\u0006\u0004\b-\u0010\u0015J\u000f\u0010.\u001a\u00020\bH\u0016¢\u0006\u0004\b.\u0010\u0015J\u001f\u00102\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00012\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u0001H\u0016¢\u0006\u0004\b4\u00105J'\u00108\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00012\u0006\u00101\u001a\u0002002\u0006\u00107\u001a\u000206H\u0016¢\u0006\u0004\b8\u00109J\u0017\u0010;\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\bH\u0016¢\u0006\u0004\b;\u0010\u0018J\u0019\u0010>\u001a\u00020\u00112\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\b>\u0010?J\u0019\u0010B\u001a\u00020\u00112\b\u0010A\u001a\u0004\u0018\u00010@H\u0016¢\u0006\u0004\bB\u0010CJ\u0019\u0010F\u001a\u00020\u00112\b\u0010E\u001a\u0004\u0018\u00010DH\u0017¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\nH\u0016¢\u0006\u0004\bH\u0010%J\u000f\u0010\u0004\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0004\u0010IJ\u000f\u0010J\u001a\u00020\u0011H\u0016¢\u0006\u0004\bJ\u0010IJ\u0017\u0010M\u001a\u00020\u00112\u0006\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bM\u0010NJ\u0017\u0010O\u001a\u00020\n2\u0006\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\u0011H\u0016¢\u0006\u0004\bQ\u0010IJ\u001f\u0010V\u001a\u00020\u00112\u0006\u0010R\u001a\u00020\u00012\u0006\u0010S\u001a\u00020 H\u0001¢\u0006\u0004\bT\u0010UR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010\u0015R\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010%R\u0017\u0010\f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\ba\u0010_\u001a\u0004\bb\u0010%R(\u0010\u0004\u001a\u0004\u0018\u00010\u00012\b\u0010c\u001a\u0004\u0018\u00010\u00018\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bd\u0010e\u001a\u0004\bf\u0010gR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\bh\u0010e\u001a\u0004\bi\u0010g¨\u0006k"}, d2 = {"Lcoil3/transition/CrossfadeDrawable;", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/drawable/Drawable$Callback;", "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;", "start", "end", "Lcoil3/size/Scale;", "scale", "", "durationMillis", "", "fadeStart", "preferExactIntrinsicSize", "<init>", "(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil3/size/Scale;IZZ)V", "Landroid/graphics/Canvas;", "canvas", "", "draw", "(Landroid/graphics/Canvas;)V", "getAlpha", "()I", "alpha", "setAlpha", "(I)V", "getOpacity", "Landroid/graphics/ColorFilter;", "getColorFilter", "()Landroid/graphics/ColorFilter;", "colorFilter", "setColorFilter", "(Landroid/graphics/ColorFilter;)V", "Landroid/graphics/Rect;", "bounds", "onBoundsChange", "(Landroid/graphics/Rect;)V", "isStateful", "()Z", "", "state", "onStateChange", "([I)Z", "level", "onLevelChange", "(I)Z", "getIntrinsicWidth", "getIntrinsicHeight", "who", "Ljava/lang/Runnable;", "what", "unscheduleDrawable", "(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V", "invalidateDrawable", "(Landroid/graphics/drawable/Drawable;)V", "", "when", "scheduleDrawable", "(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V", "tintColor", "setTint", "Landroid/content/res/ColorStateList;", "tint", "setTintList", "(Landroid/content/res/ColorStateList;)V", "Landroid/graphics/PorterDuff$Mode;", "tintMode", "setTintMode", "(Landroid/graphics/PorterDuff$Mode;)V", "Landroid/graphics/BlendMode;", "blendMode", "setTintBlendMode", "(Landroid/graphics/BlendMode;)V", "isRunning", "()V", "stop", "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;", "callback", "registerAnimationCallback", "(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V", "unregisterAnimationCallback", "(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z", "clearAnimationCallbacks", "drawable", "targetBounds", "updateBounds$coil_core_release", "(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V", "updateBounds", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lcoil3/size/Scale;", "getScale", "()Lcoil3/size/Scale;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "I", "getDurationMillis", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Z", "getFadeStart", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "getPreferExactIntrinsicSize", "value", "뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠", "Landroid/graphics/drawable/Drawable;", "getStart", "()Landroid/graphics/drawable/Drawable;", "뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻", "getEnd", "Companion", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCrossfadeDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossfadeDrawable.kt\ncoil3/transition/CrossfadeDrawable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 4 collections.kt\ncoil3/util/CollectionsKt\n*L\n1#1,284:1\n1#2:285\n27#3,7:286\n27#3,7:293\n27#3,7:300\n27#3,7:307\n43#4,4:314\n43#4,4:318\n*S KotlinDebug\n*F\n+ 1 CrossfadeDrawable.kt\ncoil3/transition/CrossfadeDrawable\n*L\n72#1:286,7\n80#1:293,7\n94#1:300,7\n101#1:307,7\n216#1:314,4\n274#1:318,4\n*E\n"})
/* loaded from: classes.dex */
public final class CrossfadeDrawable extends Drawable implements Drawable.Callback, Animatable2Compat {
    public static final int DEFAULT_DURATION = 200;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final Scale scale;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final int durationMillis;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final boolean fadeStart;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
    public final boolean preferExactIntrinsicSize;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final ArrayList f864x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final int f865x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final int f866x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public long f867x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public int f868x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public int f869x9d12c1f4;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters and from kotlin metadata */
    public Drawable start;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters and from kotlin metadata */
    public final Drawable end;

    @JvmOverloads
    public CrossfadeDrawable(@Nullable Drawable drawable, @Nullable Drawable drawable2) {
        this(drawable, drawable2, null, 0, false, false, 60, null);
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        this.f864x9738a56c.clear();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        boolean z;
        int save;
        Drawable drawable;
        int i = this.f869x9d12c1f4;
        if (i == 0) {
            Drawable drawable2 = this.start;
            if (drawable2 != null) {
                drawable2.setAlpha(this.f868x3db60231);
                save = canvas.save();
                try {
                    drawable2.draw(canvas);
                    return;
                } finally {
                }
            }
            return;
        }
        Drawable drawable3 = this.end;
        if (i == 2) {
            if (drawable3 != null) {
                drawable3.setAlpha(this.f868x3db60231);
                save = canvas.save();
                try {
                    drawable3.draw(canvas);
                    return;
                } finally {
                }
            }
            return;
        }
        double uptimeMillis = (SystemClock.uptimeMillis() - this.f867x95f25580) / this.durationMillis;
        double coerceIn = AbstractC0296x1378447b.coerceIn(uptimeMillis, 0.0d, 1.0d);
        int i2 = this.f868x3db60231;
        int i3 = (int) (coerceIn * i2);
        if (this.fadeStart) {
            i2 -= i3;
        }
        if (uptimeMillis >= 1.0d) {
            z = true;
        } else {
            z = false;
        }
        if (!z && (drawable = this.start) != null) {
            drawable.setAlpha(i2);
            save = canvas.save();
            try {
                drawable.draw(canvas);
            } finally {
            }
        }
        if (drawable3 != null) {
            drawable3.setAlpha(i3);
            save = canvas.save();
            try {
                drawable3.draw(canvas);
            } finally {
            }
        }
        if (z) {
            m969x3271d0aa();
        } else {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f868x3db60231;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        ColorFilter colorFilter;
        int i = this.f869x9d12c1f4;
        if (i != 0) {
            Drawable drawable = this.end;
            if (i != 1) {
                if (i != 2 || drawable == null) {
                    return null;
                }
                return drawable.getColorFilter();
            }
            if (drawable != null && (colorFilter = drawable.getColorFilter()) != null) {
                return colorFilter;
            }
            Drawable drawable2 = this.start;
            if (drawable2 == null) {
                return null;
            }
            return drawable2.getColorFilter();
        }
        Drawable drawable3 = this.start;
        if (drawable3 == null) {
            return null;
        }
        return drawable3.getColorFilter();
    }

    public final int getDurationMillis() {
        return this.durationMillis;
    }

    @Nullable
    public final Drawable getEnd() {
        return this.end;
    }

    public final boolean getFadeStart() {
        return this.fadeStart;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f866x34271fae;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f865x9e171bf9;
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated(message = "Deprecated in Java")
    public int getOpacity() {
        Drawable drawable = this.start;
        int i = this.f869x9d12c1f4;
        if (i == 0) {
            if (drawable == null) {
                return -2;
            }
            return drawable.getOpacity();
        }
        Drawable drawable2 = this.end;
        if (i == 2) {
            if (drawable2 == null) {
                return -2;
            }
            return drawable2.getOpacity();
        }
        if (drawable != null && drawable2 != null) {
            return Drawable.resolveOpacity(drawable.getOpacity(), drawable2.getOpacity());
        }
        if (drawable != null) {
            return drawable.getOpacity();
        }
        if (drawable2 == null) {
            return -2;
        }
        return drawable2.getOpacity();
    }

    public final boolean getPreferExactIntrinsicSize() {
        return this.preferExactIntrinsicSize;
    }

    @NotNull
    public final Scale getScale() {
        return this.scale;
    }

    @Nullable
    public final Drawable getStart() {
        return this.start;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NotNull Drawable who) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        if (this.f869x9d12c1f4 == 1) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        boolean z;
        boolean z2;
        Drawable drawable = this.start;
        if (drawable != null) {
            z = drawable.isStateful();
        } else {
            z = false;
        }
        if (!z) {
            Drawable drawable2 = this.end;
            if (drawable2 != null) {
                z2 = drawable2.isStateful();
            } else {
                z2 = false;
            }
            if (!z2) {
                return false;
            }
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(@NotNull Rect bounds) {
        Drawable drawable = this.start;
        if (drawable != null) {
            updateBounds$coil_core_release(drawable, bounds);
        }
        Drawable drawable2 = this.end;
        if (drawable2 != null) {
            updateBounds$coil_core_release(drawable2, bounds);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int level) {
        boolean z;
        boolean z2;
        Drawable drawable = this.start;
        if (drawable != null) {
            z = drawable.setLevel(level);
        } else {
            z = false;
        }
        Drawable drawable2 = this.end;
        if (drawable2 != null) {
            z2 = drawable2.setLevel(level);
        } else {
            z2 = false;
        }
        if (!z && !z2) {
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(@NotNull int[] state) {
        boolean z;
        boolean z2;
        Drawable drawable = this.start;
        if (drawable != null) {
            z = drawable.setState(state);
        } else {
            z = false;
        }
        Drawable drawable2 = this.end;
        if (drawable2 != null) {
            z2 = drawable2.setState(state);
        } else {
            z2 = false;
        }
        if (!z && !z2) {
            return false;
        }
        return true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NotNull Animatable2Compat.AnimationCallback callback) {
        this.f864x9738a56c.add(callback);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NotNull Drawable who, @NotNull Runnable what, long when) {
        scheduleSelf(what, when);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        if (alpha >= 0 && alpha < 256) {
            this.f868x3db60231 = alpha;
            return;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(alpha, "Invalid alpha: ").toString());
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        Drawable drawable = this.start;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        Drawable drawable2 = this.end;
        if (drawable2 != null) {
            drawable2.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int tintColor) {
        Drawable drawable = this.start;
        if (drawable != null) {
            drawable.setTint(tintColor);
        }
        Drawable drawable2 = this.end;
        if (drawable2 != null) {
            drawable2.setTint(tintColor);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(29)
    public void setTintBlendMode(@Nullable BlendMode blendMode) {
        Drawable drawable = this.start;
        if (drawable != null) {
            drawable.setTintBlendMode(blendMode);
        }
        Drawable drawable2 = this.end;
        if (drawable2 != null) {
            drawable2.setTintBlendMode(blendMode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(@Nullable ColorStateList tint) {
        Drawable drawable = this.start;
        if (drawable != null) {
            drawable.setTintList(tint);
        }
        Drawable drawable2 = this.end;
        if (drawable2 != null) {
            drawable2.setTintList(tint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@Nullable PorterDuff.Mode tintMode) {
        Drawable drawable = this.start;
        if (drawable != null) {
            drawable.setTintMode(tintMode);
        }
        Drawable drawable2 = this.end;
        if (drawable2 != null) {
            drawable2.setTintMode(tintMode);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Animatable animatable;
        Object obj = this.start;
        Animatable animatable2 = null;
        if (obj instanceof Animatable) {
            animatable = (Animatable) obj;
        } else {
            animatable = null;
        }
        if (animatable != null) {
            animatable.start();
        }
        Object obj2 = this.end;
        if (obj2 instanceof Animatable) {
            animatable2 = (Animatable) obj2;
        }
        if (animatable2 != null) {
            animatable2.start();
        }
        if (this.f869x9d12c1f4 != 0) {
            return;
        }
        this.f869x9d12c1f4 = 1;
        this.f867x95f25580 = SystemClock.uptimeMillis();
        ArrayList arrayList = this.f864x9738a56c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Animatable2Compat.AnimationCallback) arrayList.get(i)).onAnimationStart(this);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Animatable animatable;
        Object obj = this.start;
        Animatable animatable2 = null;
        if (obj instanceof Animatable) {
            animatable = (Animatable) obj;
        } else {
            animatable = null;
        }
        if (animatable != null) {
            animatable.stop();
        }
        Object obj2 = this.end;
        if (obj2 instanceof Animatable) {
            animatable2 = (Animatable) obj2;
        }
        if (animatable2 != null) {
            animatable2.stop();
        }
        if (this.f869x9d12c1f4 != 2) {
            m969x3271d0aa();
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NotNull Animatable2Compat.AnimationCallback callback) {
        return this.f864x9738a56c.remove(callback);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NotNull Drawable who, @NotNull Runnable what) {
        unscheduleSelf(what);
    }

    @VisibleForTesting
    public final void updateBounds$coil_core_release(@NotNull Drawable drawable, @NotNull Rect targetBounds) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            int width = targetBounds.width();
            int height = targetBounds.height();
            double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(intrinsicWidth, intrinsicHeight, width, height, this.scale);
            double d = 2;
            int roundToInt = AbstractC0975x7c3950e5.roundToInt((width - (intrinsicWidth * computeSizeMultiplier)) / d);
            int roundToInt2 = AbstractC0975x7c3950e5.roundToInt((height - (computeSizeMultiplier * intrinsicHeight)) / d);
            drawable.setBounds(targetBounds.left + roundToInt, targetBounds.top + roundToInt2, targetBounds.right - roundToInt, targetBounds.bottom - roundToInt2);
            return;
        }
        drawable.setBounds(targetBounds);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int m968xfbe0c504(Integer num, Integer num2) {
        int i;
        int i2 = -1;
        if (!this.preferExactIntrinsicSize && ((num != null && num.intValue() == -1) || (num2 != null && num2.intValue() == -1))) {
            return -1;
        }
        if (num != null) {
            i = num.intValue();
        } else {
            i = -1;
        }
        if (num2 != null) {
            i2 = num2.intValue();
        }
        return Math.max(i, i2);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m969x3271d0aa() {
        this.f869x9d12c1f4 = 2;
        this.start = null;
        ArrayList arrayList = this.f864x9738a56c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Animatable2Compat.AnimationCallback) arrayList.get(i)).onAnimationEnd(this);
        }
    }

    @JvmOverloads
    public CrossfadeDrawable(@Nullable Drawable drawable, @Nullable Drawable drawable2, @NotNull Scale scale) {
        this(drawable, drawable2, scale, 0, false, false, 56, null);
    }

    @JvmOverloads
    public CrossfadeDrawable(@Nullable Drawable drawable, @Nullable Drawable drawable2, @NotNull Scale scale, int i) {
        this(drawable, drawable2, scale, i, false, false, 48, null);
    }

    @JvmOverloads
    public CrossfadeDrawable(@Nullable Drawable drawable, @Nullable Drawable drawable2, @NotNull Scale scale, int i, boolean z) {
        this(drawable, drawable2, scale, i, z, false, 32, null);
    }

    public /* synthetic */ CrossfadeDrawable(Drawable drawable, Drawable drawable2, Scale scale, int i, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(drawable, drawable2, (i2 & 4) != 0 ? Scale.FIT : scale, (i2 & 8) != 0 ? 200 : i, (i2 & 16) != 0 ? true : z, (i2 & 32) != 0 ? false : z2);
    }

    @JvmOverloads
    public CrossfadeDrawable(@Nullable Drawable drawable, @Nullable Drawable drawable2, @NotNull Scale scale, int i, boolean z, boolean z2) {
        this.scale = scale;
        this.durationMillis = i;
        this.fadeStart = z;
        this.preferExactIntrinsicSize = z2;
        this.f864x9738a56c = new ArrayList();
        this.f865x9e171bf9 = m968xfbe0c504(drawable != null ? Integer.valueOf(drawable.getIntrinsicWidth()) : null, drawable2 != null ? Integer.valueOf(drawable2.getIntrinsicWidth()) : null);
        this.f866x34271fae = m968xfbe0c504(drawable != null ? Integer.valueOf(drawable.getIntrinsicHeight()) : null, drawable2 != null ? Integer.valueOf(drawable2.getIntrinsicHeight()) : null);
        this.f868x3db60231 = 255;
        this.start = drawable != null ? drawable.mutate() : null;
        Drawable mutate = drawable2 != null ? drawable2.mutate() : null;
        this.end = mutate;
        if (i > 0) {
            Drawable drawable3 = this.start;
            if (drawable3 != null) {
                drawable3.setCallback(this);
            }
            if (mutate != null) {
                mutate.setCallback(this);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("durationMillis must be > 0.");
    }
}
