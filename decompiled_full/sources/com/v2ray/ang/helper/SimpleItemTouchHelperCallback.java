package com.v2ray.ang.helper;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.view.animation.DecelerateInterpolator;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.panda912.muddy.ObfuscatedString;
import defpackage.C0686x24b55628;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\u0018\u0000 %2\u00020\u0001:\u0001%B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\fH\u0016J@\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u001a\u0010 \u001a\u00020\u00152\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\fH\u0016J\u0018\u0010!\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u001bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "mAdapter", "Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;", "<init>", "(Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;)V", "mReturnAnimator", "Landroid/animation/ValueAnimator;", "isLongPressDragEnabled", "", "isItemViewSwipeEnabled", "getMovementFlags", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onMove", "source", TypedValues.AttributesType.S_TARGET, "onSwiped", "", "direction", "onChildDraw", "c", "Landroid/graphics/Canvas;", "dX", "", "dY", "actionState", "isCurrentlyActive", "returnViewToOriginalPosition", "onSelectedChanged", "clearView", "getSwipeThreshold", "getSwipeEscapeVelocity", "defaultValue", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSimpleItemTouchHelperCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleItemTouchHelperCallback.kt\ncom/v2ray/ang/helper/SimpleItemTouchHelperCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"})
/* loaded from: classes3.dex */
public final class SimpleItemTouchHelperCallback extends ItemTouchHelper.Callback {
    private static final float ALPHA_FULL = 1.0f;
    private static final long ANIMATION_DURATION = 200;
    private static final float SWIPE_THRESHOLD = 0.25f;

    @NotNull
    private final ItemTouchHelperAdapter mAdapter;

    @Nullable
    private ValueAnimator mReturnAnimator;

    public SimpleItemTouchHelperCallback(@NotNull ItemTouchHelperAdapter itemTouchHelperAdapter) {
        Intrinsics.checkNotNullParameter(itemTouchHelperAdapter, new ObfuscatedString(new long[]{5469620690993131309L, 2714645913586503828L}).toString());
        this.mAdapter = itemTouchHelperAdapter;
    }

    private final void returnViewToOriginalPosition(RecyclerView.ViewHolder viewHolder) {
        ValueAnimator valueAnimator = this.mReturnAnimator;
        if (valueAnimator != null) {
            if (!valueAnimator.isRunning()) {
                valueAnimator = null;
            }
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(viewHolder.itemView.getTranslationX(), 0.0f);
        ofFloat.addUpdateListener(new C0686x24b55628(viewHolder, 4));
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.setDuration(ANIMATION_DURATION);
        ofFloat.start();
        this.mReturnAnimator = ofFloat;
    }

    public static final void returnViewToOriginalPosition$lambda$2$lambda$1(RecyclerView.ViewHolder viewHolder, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, new ObfuscatedString(new long[]{-2617513425650331742L, -8364654629128899743L, 2401969559855770264L}).toString());
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, new ObfuscatedString(new long[]{3213147388959531353L, -5347319971054928635L, -454693856678504804L, 8324563884728766389L, -8540369364361284582L, -2115068277723377998L, -2364116301664256405L, 7811129462640776828L}).toString());
        float floatValue = ((Float) animatedValue).floatValue();
        viewHolder.itemView.setTranslationX(floatValue);
        viewHolder.itemView.setAlpha(1.0f - (Math.abs(floatValue) / (viewHolder.itemView.getWidth() * SWIPE_THRESHOLD)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, new ObfuscatedString(new long[]{3512961976686630592L, -323538363316459617L, 3075396423146656026L}).toString());
        Intrinsics.checkNotNullParameter(viewHolder, new ObfuscatedString(new long[]{-755403493698885351L, 5823537698312074080L, -1273217686812438598L}).toString());
        super.clearView(recyclerView, viewHolder);
        viewHolder.itemView.setAlpha(1.0f);
        if (viewHolder instanceof ItemTouchHelperViewHolder) {
            ((ItemTouchHelperViewHolder) viewHolder).onItemClear();
        }
        this.mAdapter.onItemMoveCompleted();
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        int i = 3;
        Intrinsics.checkNotNullParameter(recyclerView, new ObfuscatedString(new long[]{-4171160197417523620L, -2547342902693813502L, 6116062630735569063L}).toString());
        Intrinsics.checkNotNullParameter(viewHolder, new ObfuscatedString(new long[]{-8623729348553450868L, 3339202614335819546L, -1665080989261365471L}).toString());
        if (recyclerView.getLayoutManager() instanceof GridLayoutManager) {
            i = 15;
        }
        return ItemTouchHelper.Callback.makeMovementFlags(i, 48);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public float getSwipeEscapeVelocity(float defaultValue) {
        return defaultValue * 10;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public float getSwipeThreshold(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, new ObfuscatedString(new long[]{-5223884270510393661L, -103264673991772154L, -4831467941465426620L}).toString());
        return 1.1f;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isItemViewSwipeEnabled() {
        return true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isLongPressDragEnabled() {
        return true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(@NotNull Canvas c, @NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, float dX, float dY, int actionState, boolean isCurrentlyActive) {
        Intrinsics.checkNotNullParameter(c, new ObfuscatedString(new long[]{3026812331906433368L, -574448431459210939L}).toString());
        Intrinsics.checkNotNullParameter(recyclerView, new ObfuscatedString(new long[]{-7038956265527757185L, -5797090773573557354L, -5896800913522328228L}).toString());
        Intrinsics.checkNotNullParameter(viewHolder, new ObfuscatedString(new long[]{-543143795501886871L, 2397009610577629355L, 178556824103083240L}).toString());
        if (actionState == 1) {
            float width = viewHolder.itemView.getWidth() * SWIPE_THRESHOLD;
            float abs = Math.abs(dX);
            float min = Math.min(abs, width) * Math.signum(dX);
            float min2 = 1.0f - (Math.min(abs, width) / width);
            viewHolder.itemView.setTranslationX(min);
            viewHolder.itemView.setAlpha(min2);
            if (abs >= width && isCurrentlyActive) {
                returnViewToOriginalPosition(viewHolder);
                return;
            }
            return;
        }
        super.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder source, @NotNull RecyclerView.ViewHolder r5) {
        Intrinsics.checkNotNullParameter(recyclerView, new ObfuscatedString(new long[]{2384348662774506358L, -7869212792122858875L, 68215343478300390L}).toString());
        Intrinsics.checkNotNullParameter(source, new ObfuscatedString(new long[]{-4529545997948238014L, -6957656466596507648L}).toString());
        Intrinsics.checkNotNullParameter(r5, new ObfuscatedString(new long[]{8412485575590505765L, -488755928829081598L}).toString());
        if (source.getItemViewType() != r5.getItemViewType()) {
            return false;
        }
        this.mAdapter.onItemMove(source.getBindingAdapterPosition(), r5.getBindingAdapterPosition());
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int actionState) {
        if (actionState != 0 && (viewHolder instanceof ItemTouchHelperViewHolder)) {
            ((ItemTouchHelperViewHolder) viewHolder).onItemSelected();
        }
        super.onSelectedChanged(viewHolder, actionState);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int direction) {
        Intrinsics.checkNotNullParameter(viewHolder, new ObfuscatedString(new long[]{-1339157885538775468L, -832531111210090637L, -2616875151120816180L}).toString());
        returnViewToOriginalPosition(viewHolder);
    }
}
