package coil3.size;

import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import androidx.annotation.RequiresApi;
import coil3.decode.DecodeUtils;
import defpackage.AbstractC0975x7c3950e5;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001b\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u0014\u0010\u0010J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\"H\u0014¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u000eH\u0014¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u000eH\u0016¢\u0006\u0004\b)\u0010\u0010J\u000f\u0010*\u001a\u00020\u000eH\u0016¢\u0006\u0004\b*\u0010\u0010J\u001f\u0010.\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u00012\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u0001H\u0016¢\u0006\u0004\b0\u00101J'\u00104\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u00012\u0006\u0010-\u001a\u00020,2\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u000eH\u0016¢\u0006\u0004\b7\u0010\u0013J\u0019\u0010:\u001a\u00020\u000b2\b\u00109\u001a\u0004\u0018\u000108H\u0016¢\u0006\u0004\b:\u0010;J\u0019\u0010>\u001a\u00020\u000b2\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\b>\u0010?J\u0019\u0010B\u001a\u00020\u000b2\b\u0010A\u001a\u0004\u0018\u00010@H\u0017¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\u001fH\u0016¢\u0006\u0004\bD\u0010!J\u000f\u0010E\u001a\u00020\u000bH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u000bH\u0016¢\u0006\u0004\bG\u0010FR\u0017\u0010\u0004\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010KR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O¨\u0006P"}, d2 = {"Lcoil3/size/ScaleDrawable;", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/drawable/Drawable$Callback;", "Landroid/graphics/drawable/Animatable;", "child", "Lcoil3/size/Scale;", "scale", "<init>", "(Landroid/graphics/drawable/Drawable;Lcoil3/size/Scale;)V", "Landroid/graphics/Canvas;", "canvas", "", "draw", "(Landroid/graphics/Canvas;)V", "", "getAlpha", "()I", "alpha", "setAlpha", "(I)V", "getOpacity", "Landroid/graphics/ColorFilter;", "getColorFilter", "()Landroid/graphics/ColorFilter;", "colorFilter", "setColorFilter", "(Landroid/graphics/ColorFilter;)V", "Landroid/graphics/Rect;", "bounds", "onBoundsChange", "(Landroid/graphics/Rect;)V", "", "isStateful", "()Z", "", "state", "onStateChange", "([I)Z", "level", "onLevelChange", "(I)Z", "getIntrinsicWidth", "getIntrinsicHeight", "who", "Ljava/lang/Runnable;", "what", "unscheduleDrawable", "(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V", "invalidateDrawable", "(Landroid/graphics/drawable/Drawable;)V", "", "when", "scheduleDrawable", "(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V", "tintColor", "setTint", "Landroid/content/res/ColorStateList;", "tint", "setTintList", "(Landroid/content/res/ColorStateList;)V", "Landroid/graphics/PorterDuff$Mode;", "tintMode", "setTintMode", "(Landroid/graphics/PorterDuff$Mode;)V", "Landroid/graphics/BlendMode;", "blendMode", "setTintBlendMode", "(Landroid/graphics/BlendMode;)V", "isRunning", "start", "()V", "stop", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Landroid/graphics/drawable/Drawable;", "getChild", "()Landroid/graphics/drawable/Drawable;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lcoil3/size/Scale;", "getScale", "()Lcoil3/size/Scale;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nScaleDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScaleDrawable.kt\ncoil3/size/ScaleDrawable\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,121:1\n27#2,7:122\n*S KotlinDebug\n*F\n+ 1 ScaleDrawable.kt\ncoil3/size/ScaleDrawable\n*L\n35#1:122,7\n*E\n"})
/* loaded from: classes.dex */
public final class ScaleDrawable extends Drawable implements Drawable.Callback, Animatable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final Drawable child;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final Scale scale;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public float f842x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public float f843x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public float f844x9738a56c;

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public ScaleDrawable(@NotNull Drawable drawable) {
        this(drawable, null, 2, 0 == true ? 1 : 0);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        int save = canvas.save();
        try {
            canvas.translate(this.f842x1378447b, this.f843x75d576dc);
            float f = this.f844x9738a56c;
            canvas.scale(f, f);
            this.child.draw(canvas);
        } finally {
            canvas.restoreToCount(save);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.child.getAlpha();
    }

    @NotNull
    public final Drawable getChild() {
        return this.child;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.child.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.child.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.child.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated(message = "Deprecated in Java")
    public int getOpacity() {
        return this.child.getOpacity();
    }

    @NotNull
    public final Scale getScale() {
        return this.scale;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NotNull Drawable who) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Object obj = this.child;
        if ((obj instanceof Animatable) && ((Animatable) obj).isRunning()) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.child.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(@NotNull Rect bounds) {
        Drawable drawable = this.child;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            int width = bounds.width();
            int height = bounds.height();
            double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(intrinsicWidth, intrinsicHeight, width, height, this.scale);
            double d = 2;
            int roundToInt = AbstractC0975x7c3950e5.roundToInt((width - (intrinsicWidth * computeSizeMultiplier)) / d);
            int roundToInt2 = AbstractC0975x7c3950e5.roundToInt((height - (intrinsicHeight * computeSizeMultiplier)) / d);
            drawable.setBounds(roundToInt, roundToInt2, intrinsicWidth + roundToInt, intrinsicHeight + roundToInt2);
            this.f842x1378447b = bounds.left;
            this.f843x75d576dc = bounds.top;
            this.f844x9738a56c = (float) computeSizeMultiplier;
            return;
        }
        drawable.setBounds(bounds);
        this.f842x1378447b = 0.0f;
        this.f843x75d576dc = 0.0f;
        this.f844x9738a56c = 1.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int level) {
        return this.child.setLevel(level);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(@NotNull int[] state) {
        return this.child.setState(state);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NotNull Drawable who, @NotNull Runnable what, long when) {
        scheduleSelf(what, when);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.child.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.child.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int tintColor) {
        this.child.setTint(tintColor);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(29)
    public void setTintBlendMode(@Nullable BlendMode blendMode) {
        this.child.setTintBlendMode(blendMode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(@Nullable ColorStateList tint) {
        this.child.setTintList(tint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@Nullable PorterDuff.Mode tintMode) {
        this.child.setTintMode(tintMode);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Object obj = this.child;
        if (obj instanceof Animatable) {
            ((Animatable) obj).start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Object obj = this.child;
        if (obj instanceof Animatable) {
            ((Animatable) obj).stop();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NotNull Drawable who, @NotNull Runnable what) {
        unscheduleSelf(what);
    }

    public /* synthetic */ ScaleDrawable(Drawable drawable, Scale scale, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(drawable, (i & 2) != 0 ? Scale.FIT : scale);
    }

    @JvmOverloads
    public ScaleDrawable(@NotNull Drawable drawable, @NotNull Scale scale) {
        this.child = drawable;
        this.scale = scale;
        this.f844x9738a56c = 1.0f;
        drawable.setCallback(this);
    }
}
