package com.github.mikephil.charting.data;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;
import com.github.mikephil.charting.utils.Utils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class Entry extends BaseEntry implements Parcelable {
    public static final Parcelable.Creator<Entry> CREATOR = new Parcelable.Creator<Entry>() { // from class: com.github.mikephil.charting.data.Entry.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Entry createFromParcel(Parcel parcel) {
            return new Entry(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Entry[] newArray(int i) {
            return new Entry[i];
        }
    };
    private float x;

    public Entry() {
        this.x = 0.0f;
    }

    public Entry copy() {
        return new Entry(this.x, getY(), getData());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equalTo(Entry entry) {
        if (entry == null || entry.getData() != getData()) {
            return false;
        }
        float abs = Math.abs(entry.x - this.x);
        float f = Utils.FLOAT_EPSILON;
        if (abs > f || Math.abs(entry.getY() - getY()) > f) {
            return false;
        }
        return true;
    }

    public float getX() {
        return this.x;
    }

    public void setX(float f) {
        this.x = f;
    }

    public String toString() {
        return new ObfuscatedString(new long[]{7121691702772668740L, -5819166841971208724L, 4780226638448043331L}).toString() + this.x + new ObfuscatedString(new long[]{-2780114349429832852L, -5062775224602028329L}).toString() + getY();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.x);
        parcel.writeFloat(getY());
        if (getData() != null) {
            if (getData() instanceof Parcelable) {
                parcel.writeInt(1);
                parcel.writeParcelable((Parcelable) getData(), i);
                return;
            }
            throw new ParcelFormatException(new ObfuscatedString(new long[]{946921043243369612L, -6134234674606394205L, -6584670032470563949L, -831702603500876489L, 6329168299355096606L, -7767133669156879147L, -1538848081687932014L}).toString());
        }
        parcel.writeInt(0);
    }

    public Entry(float f, float f2) {
        super(f2);
        this.x = f;
    }

    public Entry(float f, float f2, Object obj) {
        super(f2, obj);
        this.x = f;
    }

    public Entry(float f, float f2, Drawable drawable) {
        super(f2, drawable);
        this.x = f;
    }

    public Entry(float f, float f2, Drawable drawable, Object obj) {
        super(f2, drawable, obj);
        this.x = f;
    }

    public Entry(Parcel parcel) {
        this.x = 0.0f;
        this.x = parcel.readFloat();
        setY(parcel.readFloat());
        if (parcel.readInt() == 1) {
            setData(parcel.readParcelable(Object.class.getClassLoader()));
        }
    }
}
