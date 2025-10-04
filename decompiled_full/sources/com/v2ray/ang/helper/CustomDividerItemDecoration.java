package com.v2ray.ang.helper;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.panda912.muddy.ObfuscatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J(\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/v2ray/ang/helper/CustomDividerItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "divider", "Landroid/graphics/drawable/Drawable;", "orientation", "", "<init>", "(Landroid/graphics/drawable/Drawable;I)V", "onDraw", "", "canvas", "Landroid/graphics/Canvas;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", "state", "Landroidx/recyclerview/widget/RecyclerView$State;", "drawVerticalDividers", "drawHorizontalDividers", "getItemOffsets", "outRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CustomDividerItemDecoration extends RecyclerView.ItemDecoration {

    @NotNull
    private final Drawable divider;
    private final int orientation;

    public CustomDividerItemDecoration(@NotNull Drawable drawable, int i) {
        Intrinsics.checkNotNullParameter(drawable, new ObfuscatedString(new long[]{-3931675195516832183L, 6242087031694419773L}).toString());
        this.divider = drawable;
        this.orientation = i;
    }

    private final void drawHorizontalDividers(Canvas canvas, RecyclerView parent) {
        int paddingTop = parent.getPaddingTop();
        int height = parent.getHeight() - parent.getPaddingBottom();
        int childCount = parent.getChildCount() - 1;
        for (int i = 0; i < childCount; i++) {
            View childAt = parent.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, new ObfuscatedString(new long[]{8440462769810548571L, 3757905726701565385L, -4681738680424368671L, -702911818735632069L, 9094582498603369091L, -1945509518474786703L, 3860371883219681044L, -2388042511364285977L, 8622716028114656002L, 5358577723896630249L, -7501244353376959969L, -2522998861759848808L, 3922136827483218573L}).toString());
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) layoutParams)).rightMargin;
            this.divider.setBounds(right, paddingTop, this.divider.getIntrinsicWidth() + right, height);
            this.divider.draw(canvas);
        }
    }

    private final void drawVerticalDividers(Canvas canvas, RecyclerView parent) {
        int paddingLeft = parent.getPaddingLeft();
        int width = parent.getWidth() - parent.getPaddingRight();
        int childCount = parent.getChildCount() - 1;
        for (int i = 0; i < childCount; i++) {
            View childAt = parent.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, new ObfuscatedString(new long[]{6746496968198890249L, -2825105317479181748L, 1662026048086210629L, -2040096673340500908L, -4308024787936024915L, 8191418600751739737L, -3882840970726595695L, -3189290257388748353L, 3627152346838658778L, -7016513251812703710L, 7987570728769443154L, 7933201593840287415L, 237203079613306936L}).toString());
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) layoutParams)).bottomMargin;
            this.divider.setBounds(paddingLeft, bottom, width, this.divider.getIntrinsicHeight() + bottom);
            this.divider.draw(canvas);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, new ObfuscatedString(new long[]{8755003724476470319L, -1315831093164282150L}).toString());
        Intrinsics.checkNotNullParameter(view, new ObfuscatedString(new long[]{-2576439148606072580L, -1127897734548168337L}).toString());
        Intrinsics.checkNotNullParameter(parent, new ObfuscatedString(new long[]{6398893871779275861L, -5453351053824638869L}).toString());
        Intrinsics.checkNotNullParameter(state, new ObfuscatedString(new long[]{-5732666143595051481L, -4950796199025202690L}).toString());
        if (this.orientation == 1) {
            outRect.set(0, 0, 0, this.divider.getIntrinsicHeight());
        } else {
            outRect.set(0, 0, this.divider.getIntrinsicWidth(), 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NotNull Canvas canvas, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(canvas, new ObfuscatedString(new long[]{-3608168869266254462L, -3903198624509024925L}).toString());
        Intrinsics.checkNotNullParameter(parent, new ObfuscatedString(new long[]{-6108805666421606912L, 3116722874896568839L}).toString());
        Intrinsics.checkNotNullParameter(state, new ObfuscatedString(new long[]{-5489192865334640591L, 9153023337244025612L}).toString());
        if (this.orientation == 1) {
            drawVerticalDividers(canvas, parent);
        } else {
            drawHorizontalDividers(canvas, parent);
        }
    }
}
