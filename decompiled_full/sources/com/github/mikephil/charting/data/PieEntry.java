package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;
import android.graphics.drawable.Drawable;
import com.panda912.muddy.ObfuscatedString;

@SuppressLint({"ParcelCreator"})
/* loaded from: classes.dex */
public class PieEntry extends Entry {
    private String label;

    public PieEntry(float f) {
        super(0.0f, f);
    }

    public String getLabel() {
        return this.label;
    }

    public float getValue() {
        return getY();
    }

    @Override // com.github.mikephil.charting.data.Entry
    @Deprecated
    public float getX() {
        new ObfuscatedString(new long[]{7939276157755962903L, -8223488124742322368L, 923514883968689181L}).toString();
        new ObfuscatedString(new long[]{-2131679329616866388L, -7387697719061228395L, -580443277185484985L, -6348991311504627887L, -1470108222259290935L}).toString();
        return super.getX();
    }

    public void setLabel(String str) {
        this.label = str;
    }

    @Override // com.github.mikephil.charting.data.Entry
    @Deprecated
    public void setX(float f) {
        super.setX(f);
        new ObfuscatedString(new long[]{1005120876578154177L, 1857750463937168400L, 1527896815156880607L}).toString();
        new ObfuscatedString(new long[]{-3247382585678614375L, 6773886050217109861L, -1783302964048477688L, -2128892708590726113L, -7671865445706723186L}).toString();
    }

    public PieEntry(float f, Object obj) {
        super(0.0f, f, obj);
    }

    @Override // com.github.mikephil.charting.data.Entry
    public PieEntry copy() {
        return new PieEntry(getY(), this.label, getData());
    }

    public PieEntry(float f, Drawable drawable) {
        super(0.0f, f, drawable);
    }

    public PieEntry(float f, Drawable drawable, Object obj) {
        super(0.0f, f, drawable, obj);
    }

    public PieEntry(float f, String str) {
        super(0.0f, f);
        this.label = str;
    }

    public PieEntry(float f, String str, Object obj) {
        super(0.0f, f, obj);
        this.label = str;
    }

    public PieEntry(float f, String str, Drawable drawable) {
        super(0.0f, f, drawable);
        this.label = str;
    }

    public PieEntry(float f, String str, Drawable drawable, Object obj) {
        super(0.0f, f, drawable, obj);
        this.label = str;
    }
}
