package com.tknetwork.tunnel.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class MDToast extends Toast {
    public static int LENGTH_LONG = 1;
    public static int LENGTH_SHORT = 0;
    public static final int TYPE_ERROR = 3;
    public static final int TYPE_INFO = 0;
    public static final int TYPE_SUCCESS = 1;
    public static final int TYPE_WARNING = 2;
    private View TK;
    private final Context mContext;
    private int mType;
    private View mView;

    public MDToast(Context context) {
        super(context);
        this.mContext = context;
    }

    public static MDToast makeText(Context context, String str) {
        return makeText(context, str, LENGTH_SHORT, 0);
    }

    public int getType() {
        return this.mType;
    }

    public void setIcon(@DrawableRes int i) {
        setIcon(ContextCompat.getDrawable(this.mContext, i));
    }

    @Override // android.widget.Toast
    public void setText(@StringRes int i) {
        setText(this.mContext.getString(i));
    }

    public void setType(int i) {
        this.mType = i;
    }

    public static MDToast makeText(Context context, String str, int i) {
        return makeText(context, str, i, 0);
    }

    public void setIcon(Drawable drawable) {
        View view = this.mView;
        if (view != null) {
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
                return;
            }
            throw new RuntimeException(new ObfuscatedString(new long[]{8896498295550464950L, -5460991531029811294L, 5931783316332435743L, 676181989540062415L, -8859638794000997614L, -5345240868462987893L, -5912761368747119391L}).toString());
        }
        throw new RuntimeException(new ObfuscatedString(new long[]{4978347903649881730L, 448364615502637500L, 59228074713875714L, -1722636128637933449L, -8656989846699064988L, 6781086897964623537L, 597488513728370783L}).toString());
    }

    @Override // android.widget.Toast
    public void setText(CharSequence charSequence) {
        View view = this.mView;
        if (view != null) {
            TextView textView = (TextView) view.findViewById(R.id.text);
            if (textView != null) {
                textView.setText(charSequence);
                return;
            }
            throw new RuntimeException(new ObfuscatedString(new long[]{8583084090675453279L, -1190993751557894682L, 802926342338625339L, 2979772536873398602L, 8563964329550344060L, 8756749057725883717L, 5937284214392706076L}).toString());
        }
        throw new RuntimeException(new ObfuscatedString(new long[]{-3950085703817983125L, 4919333638012169536L, -5265032016039348174L, -1154120474434854096L, 3930394111053586640L, -2166940781332768790L, 7015500911498460863L}).toString());
    }

    public static MDToast makeText(Context context, String str, int i, int i2) {
        MDToast mDToast = new MDToast(context);
        View inflate = ((LayoutInflater) context.getSystemService(new ObfuscatedString(new long[]{6187573069037327307L, -5375386984437313762L, 1810101953701112413L}).toString())).inflate(R.layout.custom_toast_container, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon);
        TextView textView = (TextView) inflate.findViewById(R.id.text);
        if (i2 == 1) {
            imageView.setImageDrawable(ContextCompat.getDrawable(context, R.drawable.ic_check_circle_white_24dp));
            inflate.setBackground(ContextCompat.getDrawable(context, R.drawable.custom_toast_success_background));
        } else if (i2 == 2) {
            imageView.setImageDrawable(ContextCompat.getDrawable(context, R.drawable.ic_warning_white_24dp));
            inflate.setBackground(ContextCompat.getDrawable(context, R.drawable.custom_toast_warn_background));
        } else if (i2 != 3) {
            imageView.setImageDrawable(ContextCompat.getDrawable(context, R.drawable.ic_info_white_24dp));
            inflate.setBackground(ContextCompat.getDrawable(context, R.drawable.custom_toast_info_background));
        } else {
            imageView.setImageDrawable(ContextCompat.getDrawable(context, R.drawable.ic_error_white_24dp));
            inflate.setBackground(ContextCompat.getDrawable(context, R.drawable.custom_toast_error_background));
        }
        textView.setText(str);
        mDToast.setDuration(i);
        mDToast.setView(inflate);
        mDToast.mView = inflate;
        mDToast.mType = i2;
        return mDToast;
    }
}
