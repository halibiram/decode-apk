.class public final Lcom/v2ray/ang/dto/ProfileItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/ProfileItem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008o\n\u0002\u0010!\n\u0002\u00083\u0008\u0086\u0008\u0018\u0000 \u00c4\u00012\u00020\u0001:\u0002\u00c4\u0001B\u00f3\u0003\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u00081\u00102J\u000e\u0010\u0091\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u0092\u0001J\u0007\u0010\u0093\u0001\u001a\u00020\u0007J\u0015\u0010\u0094\u0001\u001a\u00020\"2\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\n\u0010\u0096\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0097\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0007H\u00c6\u0003J\n\u0010\u0099\u0001\u001a\u00020\tH\u00c6\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0007H\u00c6\u0003J\u000c\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a3\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0011\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\"H\u00c6\u0003\u00a2\u0006\u0002\u0010nJ\u000c\u0010\u00b2\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b4\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b6\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b7\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0012\u0010\u00b9\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0003\u0010\u0081\u0001J\u000c\u0010\u00ba\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00bb\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00bc\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00be\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00bf\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u00fe\u0003\u0010\u00c0\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0003\u0010\u00c1\u0001J\n\u0010\u00c2\u0001\u001a\u00020\u0003H\u00d6\u0001J\n\u0010\u00c3\u0001\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u00108\"\u0004\u0008@\u0010:R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u00108\"\u0004\u0008B\u0010:R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u00108\"\u0004\u0008D\u0010:R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u00108\"\u0004\u0008F\u0010:R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u00108\"\u0004\u0008H\u0010:R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u00108\"\u0004\u0008J\u0010:R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u00108\"\u0004\u0008L\u0010:R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u00108\"\u0004\u0008N\u0010:R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u00108\"\u0004\u0008P\u0010:R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u00108\"\u0004\u0008R\u0010:R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u00108\"\u0004\u0008T\u0010:R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u00108\"\u0004\u0008V\u0010:R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u00108\"\u0004\u0008X\u0010:R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u00108\"\u0004\u0008Z\u0010:R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u00108\"\u0004\u0008\\\u0010:R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u00108\"\u0004\u0008^\u0010:R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u00108\"\u0004\u0008`\u0010:R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u00108\"\u0004\u0008b\u0010:R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u00108\"\u0004\u0008d\u0010:R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u00108\"\u0004\u0008f\u0010:R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u00108\"\u0004\u0008h\u0010:R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u00108\"\u0004\u0008j\u0010:R\u001c\u0010 \u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u00108\"\u0004\u0008l\u0010:R\u001e\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010q\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR\u001c\u0010#\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u00108\"\u0004\u0008s\u0010:R\u001c\u0010$\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008t\u00108\"\u0004\u0008u\u0010:R\u001c\u0010%\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u00108\"\u0004\u0008w\u0010:R\u001c\u0010&\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u00108\"\u0004\u0008y\u0010:R\u001c\u0010\'\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u00108\"\u0004\u0008{\u0010:R\u001c\u0010(\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008|\u00108\"\u0004\u0008}\u0010:R\u001c\u0010)\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008~\u00108\"\u0004\u0008\u007f\u0010:R#\u0010*\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0015\n\u0003\u0010\u0084\u0001\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u001e\u0010+\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0085\u0001\u00108\"\u0005\u0008\u0086\u0001\u0010:R\u001e\u0010,\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0087\u0001\u00108\"\u0005\u0008\u0088\u0001\u0010:R\u001e\u0010-\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0089\u0001\u00108\"\u0005\u0008\u008a\u0001\u0010:R\u001e\u0010.\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008b\u0001\u00108\"\u0005\u0008\u008c\u0001\u0010:R\u001e\u0010/\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008d\u0001\u00108\"\u0005\u0008\u008e\u0001\u0010:R\u001e\u00100\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008f\u0001\u00108\"\u0005\u0008\u0090\u0001\u0010:\u00a8\u0006\u00c5\u0001"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "",
        "configVersion",
        "",
        "configType",
        "Lcom/v2ray/ang/dto/EConfigType;",
        "subscriptionId",
        "",
        "addedTime",
        "",
        "remarks",
        "server",
        "serverPort",
        "password",
        "method",
        "flow",
        "username",
        "network",
        "headerType",
        "host",
        "path",
        "seed",
        "quicSecurity",
        "quicKey",
        "mode",
        "serviceName",
        "authority",
        "xhttpMode",
        "xhttpExtra",
        "security",
        "sni",
        "alpn",
        "fingerPrint",
        "insecure",
        "",
        "publicKey",
        "shortId",
        "spiderX",
        "secretKey",
        "preSharedKey",
        "localAddress",
        "reserved",
        "mtu",
        "obfsPassword",
        "portHopping",
        "portHoppingInterval",
        "pinSHA256",
        "bandwidthDown",
        "bandwidthUp",
        "<init>",
        "(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getConfigVersion",
        "()I",
        "getConfigType",
        "()Lcom/v2ray/ang/dto/EConfigType;",
        "getSubscriptionId",
        "()Ljava/lang/String;",
        "setSubscriptionId",
        "(Ljava/lang/String;)V",
        "getAddedTime",
        "()J",
        "setAddedTime",
        "(J)V",
        "getRemarks",
        "setRemarks",
        "getServer",
        "setServer",
        "getServerPort",
        "setServerPort",
        "getPassword",
        "setPassword",
        "getMethod",
        "setMethod",
        "getFlow",
        "setFlow",
        "getUsername",
        "setUsername",
        "getNetwork",
        "setNetwork",
        "getHeaderType",
        "setHeaderType",
        "getHost",
        "setHost",
        "getPath",
        "setPath",
        "getSeed",
        "setSeed",
        "getQuicSecurity",
        "setQuicSecurity",
        "getQuicKey",
        "setQuicKey",
        "getMode",
        "setMode",
        "getServiceName",
        "setServiceName",
        "getAuthority",
        "setAuthority",
        "getXhttpMode",
        "setXhttpMode",
        "getXhttpExtra",
        "setXhttpExtra",
        "getSecurity",
        "setSecurity",
        "getSni",
        "setSni",
        "getAlpn",
        "setAlpn",
        "getFingerPrint",
        "setFingerPrint",
        "getInsecure",
        "()Ljava/lang/Boolean;",
        "setInsecure",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getPublicKey",
        "setPublicKey",
        "getShortId",
        "setShortId",
        "getSpiderX",
        "setSpiderX",
        "getSecretKey",
        "setSecretKey",
        "getPreSharedKey",
        "setPreSharedKey",
        "getLocalAddress",
        "setLocalAddress",
        "getReserved",
        "setReserved",
        "getMtu",
        "()Ljava/lang/Integer;",
        "setMtu",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getObfsPassword",
        "setObfsPassword",
        "getPortHopping",
        "setPortHopping",
        "getPortHoppingInterval",
        "setPortHoppingInterval",
        "getPinSHA256",
        "setPinSHA256",
        "getBandwidthDown",
        "setBandwidthDown",
        "getBandwidthUp",
        "setBandwidthUp",
        "getAllOutboundTags",
        "",
        "getServerAddressAndPort",
        "equals",
        "other",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "component38",
        "component39",
        "component40",
        "component41",
        "component42",
        "copy",
        "(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;",
        "hashCode",
        "toString",
        "Companion",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private addedTime:J

.field private alpn:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private authority:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bandwidthDown:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bandwidthUp:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final configType:Lcom/v2ray/ang/dto/EConfigType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configVersion:I

.field private fingerPrint:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private flow:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private headerType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private insecure:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private localAddress:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mtu:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private network:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private obfsPassword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pinSHA256:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private portHopping:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private portHoppingInterval:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private preSharedKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private publicKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private quicKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private quicSecurity:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private remarks:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private reserved:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private secretKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private security:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private seed:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private server:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private serverPort:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private serviceName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sni:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private spiderX:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private subscriptionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private xhttpExtra:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private xhttpMode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/v2ray/ang/dto/ProfileItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/v2ray/ang/dto/ProfileItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2    # Lcom/v2ray/ang/dto/EConfigType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p43    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p6

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x3

    new-array v6, v5, [J

    fill-array-data v6, :array_0

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v5, [J

    fill-array-data v5, :array_1

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x2

    new-array v5, v5, [J

    fill-array-data v5, :array_2

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v4, p1

    .line 2
    iput v4, v0, Lcom/v2ray/ang/dto/ProfileItem;->configVersion:I

    .line 3
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 4
    iput-object v2, v0, Lcom/v2ray/ang/dto/ProfileItem;->subscriptionId:Ljava/lang/String;

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->addedTime:J

    .line 6
    iput-object v3, v0, Lcom/v2ray/ang/dto/ProfileItem;->remarks:Ljava/lang/String;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 9
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->password:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 10
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->method:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 11
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->flow:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 12
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->username:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->network:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->headerType:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->host:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->path:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->seed:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 18
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->quicSecurity:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 19
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->quicKey:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 20
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->mode:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 21
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->serviceName:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 22
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->authority:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 23
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpMode:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 24
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpExtra:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 25
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->security:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 26
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->sni:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 27
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->alpn:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 28
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->fingerPrint:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 29
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->insecure:Ljava/lang/Boolean;

    move-object/from16 v1, p30

    .line 30
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->publicKey:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 31
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->shortId:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 32
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->spiderX:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 33
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->secretKey:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 34
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->preSharedKey:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 35
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->localAddress:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 36
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->reserved:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 37
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->mtu:Ljava/lang/Integer;

    move-object/from16 v1, p38

    .line 38
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->obfsPassword:Ljava/lang/String;

    move-object/from16 v1, p39

    .line 39
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->portHopping:Ljava/lang/String;

    move-object/from16 v1, p40

    .line 40
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->portHoppingInterval:Ljava/lang/String;

    move-object/from16 v1, p41

    .line 41
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->pinSHA256:Ljava/lang/String;

    move-object/from16 v1, p42

    .line 42
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthDown:Ljava/lang/String;

    move-object/from16 v1, p43

    .line 43
    iput-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthUp:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x7ccfec68d9b07574L    # 1.592853950114875E293
        -0x9c60f08221764daL
        0x5a709d5a8c6e57bcL    # 4.49872776683133E127
    .end array-data

    :array_1
    .array-data 8
        0x2cf62ce47e996e68L
        0x22c8d6b9c304f4e1L
        0x7603a0f581ab059cL    # 3.0179971464266943E260
    .end array-data

    :array_2
    .array-data 8
        -0x2afa22ea666b15f2L    # -3.825695892274857E101
        -0x4f01a0fff404c8cL
    .end array-data
.end method

.method public synthetic constructor <init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 40

    move/from16 v0, p44

    move/from16 v1, p45

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    :goto_0
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_1

    .line 44
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    const-wide v8, -0x1ac2b6c482e274b5L    # -4.7469913445201224E179

    aput-wide v8, v7, v2

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_2

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p4

    :goto_2
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_3

    .line 46
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v4, [J

    const-wide v11, 0x3bbd55b5cf6c5614L    # 6.211886680251861E-21

    aput-wide v11, v10, v2

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object/from16 v2, p6

    :goto_3
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_7

    const/4 v13, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v10, v0, 0x800

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v10, p13

    :goto_a
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v3, p14

    :goto_b
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v4, p15

    :goto_c
    move-object/from16 v17, v4

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v4, p16

    :goto_d
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v18, p17

    :goto_e
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_f

    const/16 v19, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v19, p18

    :goto_f
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_10

    const/16 v20, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v20, p19

    :goto_10
    const/high16 v21, 0x40000

    and-int v21, v0, v21

    if-eqz v21, :cond_11

    const/16 v21, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v21, p20

    :goto_11
    const/high16 v22, 0x80000

    and-int v22, v0, v22

    if-eqz v22, :cond_12

    const/16 v22, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v22, p21

    :goto_12
    const/high16 v23, 0x100000

    and-int v23, v0, v23

    if-eqz v23, :cond_13

    const/16 v23, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v23, p22

    :goto_13
    const/high16 v24, 0x200000

    and-int v24, v0, v24

    if-eqz v24, :cond_14

    const/16 v24, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v24, p23

    :goto_14
    const/high16 v25, 0x400000

    and-int v25, v0, v25

    if-eqz v25, :cond_15

    const/16 v25, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v25, p24

    :goto_15
    const/high16 v26, 0x800000

    and-int v26, v0, v26

    if-eqz v26, :cond_16

    const/16 v26, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v26, p25

    :goto_16
    const/high16 v27, 0x1000000

    and-int v27, v0, v27

    if-eqz v27, :cond_17

    const/16 v27, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v27, p26

    :goto_17
    const/high16 v28, 0x2000000

    and-int v28, v0, v28

    if-eqz v28, :cond_18

    const/16 v28, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v28, p27

    :goto_18
    const/high16 v29, 0x4000000

    and-int v29, v0, v29

    if-eqz v29, :cond_19

    const/16 v29, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v29, p28

    :goto_19
    const/high16 v30, 0x8000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1a

    const/16 v30, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v30, p29

    :goto_1a
    const/high16 v31, 0x10000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1b

    const/16 v31, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v31, p30

    :goto_1b
    const/high16 v32, 0x20000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1c

    const/16 v32, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v32, p31

    :goto_1c
    const/high16 v33, 0x40000000    # 2.0f

    and-int v33, v0, v33

    if-eqz v33, :cond_1d

    const/16 v33, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v33, p32

    :goto_1d
    const/high16 v34, -0x80000000

    and-int v0, v0, v34

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    :goto_1e
    const/16 v16, 0x1

    goto :goto_1f

    :cond_1e
    move-object/from16 v0, p33

    goto :goto_1e

    :goto_1f
    and-int/lit8 v16, v1, 0x1

    if-eqz v16, :cond_1f

    const/16 v16, 0x0

    goto :goto_20

    :cond_1f
    move-object/from16 v16, p34

    :goto_20
    and-int/lit8 v34, v1, 0x2

    if-eqz v34, :cond_20

    const/16 v34, 0x0

    :goto_21
    const/16 v35, 0x4

    goto :goto_22

    :cond_20
    move-object/from16 v34, p35

    goto :goto_21

    :goto_22
    and-int/lit8 v35, v1, 0x4

    if-eqz v35, :cond_21

    const/16 v35, 0x0

    goto :goto_23

    :cond_21
    move-object/from16 v35, p36

    :goto_23
    and-int/lit8 v36, v1, 0x8

    if-eqz v36, :cond_22

    const/16 v36, 0x0

    goto :goto_24

    :cond_22
    move-object/from16 v36, p37

    :goto_24
    and-int/lit8 v37, v1, 0x10

    if-eqz v37, :cond_23

    const/16 v37, 0x0

    goto :goto_25

    :cond_23
    move-object/from16 v37, p38

    :goto_25
    and-int/lit8 v38, v1, 0x20

    if-eqz v38, :cond_24

    const/16 v38, 0x0

    goto :goto_26

    :cond_24
    move-object/from16 v38, p39

    :goto_26
    and-int/lit8 v39, v1, 0x40

    if-eqz v39, :cond_25

    move-object/from16 p44, v0

    const/16 v39, 0x0

    goto :goto_27

    :cond_25
    move-object/from16 v39, p40

    move-object/from16 p44, v0

    :goto_27
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_26

    const/16 p46, 0x0

    goto :goto_28

    :cond_26
    move-object/from16 p46, p41

    :goto_28
    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_29

    :cond_27
    move-object/from16 v0, p42

    :goto_29
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    goto :goto_2a

    :cond_28
    move-object/from16 v1, p43

    :goto_2a
    move-object/from16 p3, p0

    move/from16 p4, v5

    move-object/from16 p5, p2

    move-object/from16 p6, v6

    move-wide/from16 p7, v7

    move-object/from16 p9, v2

    move-object/from16 p10, v9

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v10

    move-object/from16 p17, v3

    move-object/from16 p18, v17

    move-object/from16 p19, v4

    move-object/from16 p20, v18

    move-object/from16 p21, v19

    move-object/from16 p22, v20

    move-object/from16 p23, v21

    move-object/from16 p24, v22

    move-object/from16 p25, v23

    move-object/from16 p26, v24

    move-object/from16 p27, v25

    move-object/from16 p28, v26

    move-object/from16 p29, v27

    move-object/from16 p30, v28

    move-object/from16 p31, v29

    move-object/from16 p32, v30

    move-object/from16 p33, v31

    move-object/from16 p34, v32

    move-object/from16 p35, v33

    move-object/from16 p36, p44

    move-object/from16 p37, v16

    move-object/from16 p38, v34

    move-object/from16 p39, v35

    move-object/from16 p40, v36

    move-object/from16 p41, v37

    move-object/from16 p42, v38

    move-object/from16 p43, v39

    move-object/from16 p44, p46

    move-object/from16 p45, v0

    move-object/from16 p46, v1

    .line 47
    invoke-direct/range {p3 .. p46}, Lcom/v2ray/ang/dto/ProfileItem;-><init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/ProfileItem;ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p44

    move/from16 v2, p45

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/v2ray/ang/dto/ProfileItem;->configVersion:I

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/v2ray/ang/dto/ProfileItem;->configType:Lcom/v2ray/ang/dto/EConfigType;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/v2ray/ang/dto/ProfileItem;->subscriptionId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/v2ray/ang/dto/ProfileItem;->addedTime:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p4

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/v2ray/ang/dto/ProfileItem;->remarks:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p8

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/v2ray/ang/dto/ProfileItem;->password:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p9

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/v2ray/ang/dto/ProfileItem;->method:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p10

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/v2ray/ang/dto/ProfileItem;->flow:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p11

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->username:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p12

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->network:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p13

    :goto_b
    move-object/from16 p13, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->headerType:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->host:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->path:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->seed:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->quicSecurity:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->quicKey:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->mode:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->serviceName:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->authority:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpMode:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpExtra:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->security:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p25

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->sni:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p26

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->alpn:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p27

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->fingerPrint:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p28

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->insecure:Ljava/lang/Boolean;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p29

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->publicKey:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p30

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->shortId:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p31

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p31, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->spiderX:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p32

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->secretKey:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p33

    :goto_1f
    and-int/lit8 v16, v2, 0x1

    move-object/from16 p33, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->preSharedKey:Ljava/lang/String;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p34

    :goto_20
    and-int/lit8 v16, v2, 0x2

    move-object/from16 p34, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->localAddress:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p35

    :goto_21
    and-int/lit8 v16, v2, 0x4

    move-object/from16 p35, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->reserved:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p36

    :goto_22
    and-int/lit8 v16, v2, 0x8

    move-object/from16 p36, v1

    if-eqz v16, :cond_23

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->mtu:Ljava/lang/Integer;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p37

    :goto_23
    and-int/lit8 v16, v2, 0x10

    move-object/from16 p37, v1

    if-eqz v16, :cond_24

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->obfsPassword:Ljava/lang/String;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p38

    :goto_24
    and-int/lit8 v16, v2, 0x20

    move-object/from16 p38, v1

    if-eqz v16, :cond_25

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->portHopping:Ljava/lang/String;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p39

    :goto_25
    and-int/lit8 v16, v2, 0x40

    move-object/from16 p39, v1

    if-eqz v16, :cond_26

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->portHoppingInterval:Ljava/lang/String;

    goto :goto_26

    :cond_26
    move-object/from16 v1, p40

    :goto_26
    move-object/from16 p40, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->pinSHA256:Ljava/lang/String;

    goto :goto_27

    :cond_27
    move-object/from16 v1, p41

    :goto_27
    move-object/from16 p41, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthDown:Ljava/lang/String;

    goto :goto_28

    :cond_28
    move-object/from16 v1, p42

    :goto_28
    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthUp:Ljava/lang/String;

    goto :goto_29

    :cond_29
    move-object/from16 v2, p43

    :goto_29
    move/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-wide/from16 p4, v6

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move-object/from16 p32, v15

    move-object/from16 p42, v1

    move-object/from16 p43, v2

    invoke-virtual/range {p0 .. p43}, Lcom/v2ray/ang/dto/ProfileItem;->copy(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->configVersion:I

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->flow:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->headerType:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->seed:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicSecurity:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/v2ray/ang/dto/EConfigType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->configType:Lcom/v2ray/ang/dto/EConfigType;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpMode:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpExtra:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->security:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->sni:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->alpn:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->fingerPrint:Ljava/lang/String;

    return-object v0
.end method

.method public final component28()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->insecure:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->shortId:Ljava/lang/String;

    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->spiderX:Ljava/lang/String;

    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->preSharedKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component34()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->localAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component35()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public final component36()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->mtu:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component37()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->obfsPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final component38()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHopping:Ljava/lang/String;

    return-object v0
.end method

.method public final component39()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHoppingInterval:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->addedTime:J

    return-wide v0
.end method

.method public final component40()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->pinSHA256:Ljava/lang/String;

    return-object v0
.end method

.method public final component41()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthDown:Ljava/lang/String;

    return-object v0
.end method

.method public final component42()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthUp:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 46
    .param p2    # Lcom/v2ray/ang/dto/EConfigType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p43    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    move-object/from16 v40, p40

    move-object/from16 v41, p41

    move-object/from16 v42, p42

    move-object/from16 v43, p43

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    move-object/from16 v44, v2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v45, Lcom/v2ray/ang/dto/ProfileItem;

    move-object/from16 v0, v45

    move/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct/range {v0 .. v43}, Lcom/v2ray/ang/dto/ProfileItem;-><init>(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v45

    nop

    :array_0
    .array-data 8
        0x313c59a5c6808ed8L    # 1.6045636516595272E-71
        -0x17c9d1802a54cc08L    # -1.0120240664132937E194
        0x88e512f995f0a9eL
    .end array-data

    :array_1
    .array-data 8
        0x4487b50f301af9dcL    # 1.3994298023464145E22
        0x3147e60ce9a4ffceL    # 2.705229559273198E-71
        -0x258d3936f7b3f7c1L    # -5.084086563076097E127
    .end array-data

    :array_2
    .array-data 8
        -0x74560ceced0d6eebL
        -0x16acee63b99230dbL    # -2.280658718201797E199
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    check-cast p1, Lcom/v2ray/ang/dto/ProfileItem;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->password:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->password:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->method:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->method:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->flow:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->flow:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->username:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->username:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->network:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->network:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->headerType:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->headerType:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->host:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->host:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->path:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->path:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->seed:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->seed:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicSecurity:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->quicSecurity:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicKey:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->quicKey:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_1

    .line 136
    .line 137
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->mode:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->mode:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_1

    .line 146
    .line 147
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->serviceName:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->serviceName:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_1

    .line 156
    .line 157
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->authority:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->authority:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_1

    .line 166
    .line 167
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpMode:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->xhttpMode:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_1

    .line 176
    .line 177
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->security:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->security:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_1

    .line 186
    .line 187
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->sni:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->sni:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_1

    .line 196
    .line 197
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->alpn:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->alpn:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_1

    .line 206
    .line 207
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->fingerPrint:Ljava/lang/String;

    .line 208
    .line 209
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->fingerPrint:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_1

    .line 216
    .line 217
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->publicKey:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->publicKey:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_1

    .line 226
    .line 227
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->shortId:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->shortId:Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_1

    .line 236
    .line 237
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->secretKey:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->secretKey:Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_1

    .line 246
    .line 247
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->localAddress:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->localAddress:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_1

    .line 256
    .line 257
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->reserved:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->reserved:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_1

    .line 266
    .line 267
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->mtu:Ljava/lang/Integer;

    .line 268
    .line 269
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->mtu:Ljava/lang/Integer;

    .line 270
    .line 271
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_1

    .line 276
    .line 277
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->obfsPassword:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->obfsPassword:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_1

    .line 286
    .line 287
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHopping:Ljava/lang/String;

    .line 288
    .line 289
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->portHopping:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_1

    .line 296
    .line 297
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHoppingInterval:Ljava/lang/String;

    .line 298
    .line 299
    iget-object v2, p1, Lcom/v2ray/ang/dto/ProfileItem;->portHoppingInterval:Ljava/lang/String;

    .line 300
    .line 301
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_1

    .line 306
    .line 307
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->pinSHA256:Ljava/lang/String;

    .line 308
    .line 309
    iget-object p1, p1, Lcom/v2ray/ang/dto/ProfileItem;->pinSHA256:Ljava/lang/String;

    .line 310
    .line 311
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-eqz p1, :cond_1

    .line 316
    .line 317
    const/4 v0, 0x1

    .line 318
    :cond_1
    return v0
.end method

.method public final getAddedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->addedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAllOutboundTags()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v1, [J

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_2

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :array_0
    .array-data 8
        0x11d50b83bd6dcda9L    # 9.096864227989471E-223
        0x3f7abc79b997db2eL    # 0.00652740048234683
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x545a953176b9b6b8L    # 2.2712194516060015E98
        -0x6a6f06d2956c9eb0L    # -8.458834046351589E-205
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_2
    .array-data 8
        -0x23416c3a1ede3a94L    # -5.689528517039563E138
        0x6a99add022dfb6dL
    .end array-data
.end method

.method public final getAlpn()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->alpn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAuthority()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->authority:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBandwidthDown()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthDown:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBandwidthUp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthUp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfigType()Lcom/v2ray/ang/dto/EConfigType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfigVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->configVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFingerPrint()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->fingerPrint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFlow()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->flow:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeaderType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->headerType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInsecure()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->insecure:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocalAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->localAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->method:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->mode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMtu()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->mtu:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetwork()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->network:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getObfsPassword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->obfsPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPinSHA256()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->pinSHA256:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPortHopping()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHopping:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPortHoppingInterval()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHoppingInterval:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreSharedKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->preSharedKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPublicKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->publicKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuicKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuicSecurity()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicSecurity:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRemarks()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->remarks:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReserved()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->reserved:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSecretKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->secretKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSecurity()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->security:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSeed()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->seed:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServer()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServerAddressAndPort()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 12
    .line 13
    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_1
    sget-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/util/Utils;->getIpv6Address(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, ":"

    .line 44
    .line 45
    invoke-static {v0, v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        0x7f5d0e14c16a60f3L    # 3.1879871576763066E305
        -0x68bbb72ec6939b14L
        0x6b62b59fe9fa36e1L    # 1.9221555061223585E209
    .end array-data
.end method

.method public final getServerPort()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->serviceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->shortId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSni()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->sni:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSpiderX()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->spiderX:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubscriptionId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->subscriptionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->username:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getXhttpExtra()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpExtra:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getXhttpMode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->configVersion:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v0

    .line 14
    mul-int/lit8 v2, v2, 0x1f

    .line 15
    .line 16
    iget-object v0, p0, Lcom/v2ray/ang/dto/ProfileItem;->subscriptionId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->addedTime:J

    .line 23
    .line 24
    const/16 v4, 0x20

    .line 25
    .line 26
    ushr-long v4, v2, v4

    .line 27
    .line 28
    xor-long/2addr v2, v4

    .line 29
    long-to-int v3, v2

    .line 30
    add-int/2addr v0, v3

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->remarks:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_0
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_1
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->password:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_2
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->method:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_3
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->flow:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto :goto_4

    .line 98
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_4
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->username:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_5

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_5
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->network:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_6

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    goto :goto_6

    .line 124
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_6
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->headerType:Ljava/lang/String;

    .line 132
    .line 133
    if-nez v2, :cond_7

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    goto :goto_7

    .line 137
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_7
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->host:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_8

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    goto :goto_8

    .line 150
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_8
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->path:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v2, :cond_9

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    goto :goto_9

    .line 163
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_9
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->seed:Ljava/lang/String;

    .line 171
    .line 172
    if-nez v2, :cond_a

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    goto :goto_a

    .line 176
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_a
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicSecurity:Ljava/lang/String;

    .line 184
    .line 185
    if-nez v2, :cond_b

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    goto :goto_b

    .line 189
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_b
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicKey:Ljava/lang/String;

    .line 197
    .line 198
    if-nez v2, :cond_c

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    goto :goto_c

    .line 202
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_c
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->mode:Ljava/lang/String;

    .line 210
    .line 211
    if-nez v2, :cond_d

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    goto :goto_d

    .line 215
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :goto_d
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->serviceName:Ljava/lang/String;

    .line 223
    .line 224
    if-nez v2, :cond_e

    .line 225
    .line 226
    const/4 v2, 0x0

    .line 227
    goto :goto_e

    .line 228
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_e
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    .line 234
    .line 235
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->authority:Ljava/lang/String;

    .line 236
    .line 237
    if-nez v2, :cond_f

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    goto :goto_f

    .line 241
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_f
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    .line 247
    .line 248
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpMode:Ljava/lang/String;

    .line 249
    .line 250
    if-nez v2, :cond_10

    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    goto :goto_10

    .line 254
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    :goto_10
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v0, v0, 0x1f

    .line 260
    .line 261
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpExtra:Ljava/lang/String;

    .line 262
    .line 263
    if-nez v2, :cond_11

    .line 264
    .line 265
    const/4 v2, 0x0

    .line 266
    goto :goto_11

    .line 267
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_11
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    .line 273
    .line 274
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->security:Ljava/lang/String;

    .line 275
    .line 276
    if-nez v2, :cond_12

    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    goto :goto_12

    .line 280
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    :goto_12
    add-int/2addr v0, v2

    .line 285
    mul-int/lit8 v0, v0, 0x1f

    .line 286
    .line 287
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->sni:Ljava/lang/String;

    .line 288
    .line 289
    if-nez v2, :cond_13

    .line 290
    .line 291
    const/4 v2, 0x0

    .line 292
    goto :goto_13

    .line 293
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    :goto_13
    add-int/2addr v0, v2

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    .line 299
    .line 300
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->alpn:Ljava/lang/String;

    .line 301
    .line 302
    if-nez v2, :cond_14

    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    goto :goto_14

    .line 306
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    :goto_14
    add-int/2addr v0, v2

    .line 311
    mul-int/lit8 v0, v0, 0x1f

    .line 312
    .line 313
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->fingerPrint:Ljava/lang/String;

    .line 314
    .line 315
    if-nez v2, :cond_15

    .line 316
    .line 317
    const/4 v2, 0x0

    .line 318
    goto :goto_15

    .line 319
    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    :goto_15
    add-int/2addr v0, v2

    .line 324
    mul-int/lit8 v0, v0, 0x1f

    .line 325
    .line 326
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->insecure:Ljava/lang/Boolean;

    .line 327
    .line 328
    if-nez v2, :cond_16

    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    goto :goto_16

    .line 332
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    :goto_16
    add-int/2addr v0, v2

    .line 337
    mul-int/lit8 v0, v0, 0x1f

    .line 338
    .line 339
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->publicKey:Ljava/lang/String;

    .line 340
    .line 341
    if-nez v2, :cond_17

    .line 342
    .line 343
    const/4 v2, 0x0

    .line 344
    goto :goto_17

    .line 345
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    :goto_17
    add-int/2addr v0, v2

    .line 350
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    .line 352
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->shortId:Ljava/lang/String;

    .line 353
    .line 354
    if-nez v2, :cond_18

    .line 355
    .line 356
    const/4 v2, 0x0

    .line 357
    goto :goto_18

    .line 358
    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    :goto_18
    add-int/2addr v0, v2

    .line 363
    mul-int/lit8 v0, v0, 0x1f

    .line 364
    .line 365
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->spiderX:Ljava/lang/String;

    .line 366
    .line 367
    if-nez v2, :cond_19

    .line 368
    .line 369
    const/4 v2, 0x0

    .line 370
    goto :goto_19

    .line 371
    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    :goto_19
    add-int/2addr v0, v2

    .line 376
    mul-int/lit8 v0, v0, 0x1f

    .line 377
    .line 378
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->secretKey:Ljava/lang/String;

    .line 379
    .line 380
    if-nez v2, :cond_1a

    .line 381
    .line 382
    const/4 v2, 0x0

    .line 383
    goto :goto_1a

    .line 384
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    :goto_1a
    add-int/2addr v0, v2

    .line 389
    mul-int/lit8 v0, v0, 0x1f

    .line 390
    .line 391
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->preSharedKey:Ljava/lang/String;

    .line 392
    .line 393
    if-nez v2, :cond_1b

    .line 394
    .line 395
    const/4 v2, 0x0

    .line 396
    goto :goto_1b

    .line 397
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    :goto_1b
    add-int/2addr v0, v2

    .line 402
    mul-int/lit8 v0, v0, 0x1f

    .line 403
    .line 404
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->localAddress:Ljava/lang/String;

    .line 405
    .line 406
    if-nez v2, :cond_1c

    .line 407
    .line 408
    const/4 v2, 0x0

    .line 409
    goto :goto_1c

    .line 410
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    :goto_1c
    add-int/2addr v0, v2

    .line 415
    mul-int/lit8 v0, v0, 0x1f

    .line 416
    .line 417
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->reserved:Ljava/lang/String;

    .line 418
    .line 419
    if-nez v2, :cond_1d

    .line 420
    .line 421
    const/4 v2, 0x0

    .line 422
    goto :goto_1d

    .line 423
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    :goto_1d
    add-int/2addr v0, v2

    .line 428
    mul-int/lit8 v0, v0, 0x1f

    .line 429
    .line 430
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->mtu:Ljava/lang/Integer;

    .line 431
    .line 432
    if-nez v2, :cond_1e

    .line 433
    .line 434
    const/4 v2, 0x0

    .line 435
    goto :goto_1e

    .line 436
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    :goto_1e
    add-int/2addr v0, v2

    .line 441
    mul-int/lit8 v0, v0, 0x1f

    .line 442
    .line 443
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->obfsPassword:Ljava/lang/String;

    .line 444
    .line 445
    if-nez v2, :cond_1f

    .line 446
    .line 447
    const/4 v2, 0x0

    .line 448
    goto :goto_1f

    .line 449
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    :goto_1f
    add-int/2addr v0, v2

    .line 454
    mul-int/lit8 v0, v0, 0x1f

    .line 455
    .line 456
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHopping:Ljava/lang/String;

    .line 457
    .line 458
    if-nez v2, :cond_20

    .line 459
    .line 460
    const/4 v2, 0x0

    .line 461
    goto :goto_20

    .line 462
    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    :goto_20
    add-int/2addr v0, v2

    .line 467
    mul-int/lit8 v0, v0, 0x1f

    .line 468
    .line 469
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHoppingInterval:Ljava/lang/String;

    .line 470
    .line 471
    if-nez v2, :cond_21

    .line 472
    .line 473
    const/4 v2, 0x0

    .line 474
    goto :goto_21

    .line 475
    :cond_21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    :goto_21
    add-int/2addr v0, v2

    .line 480
    mul-int/lit8 v0, v0, 0x1f

    .line 481
    .line 482
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->pinSHA256:Ljava/lang/String;

    .line 483
    .line 484
    if-nez v2, :cond_22

    .line 485
    .line 486
    const/4 v2, 0x0

    .line 487
    goto :goto_22

    .line 488
    :cond_22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    :goto_22
    add-int/2addr v0, v2

    .line 493
    mul-int/lit8 v0, v0, 0x1f

    .line 494
    .line 495
    iget-object v2, p0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthDown:Ljava/lang/String;

    .line 496
    .line 497
    if-nez v2, :cond_23

    .line 498
    .line 499
    const/4 v2, 0x0

    .line 500
    goto :goto_23

    .line 501
    :cond_23
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    :goto_23
    add-int/2addr v0, v2

    .line 506
    mul-int/lit8 v0, v0, 0x1f

    .line 507
    .line 508
    iget-object v1, p0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthUp:Ljava/lang/String;

    .line 509
    .line 510
    if-nez v1, :cond_24

    .line 511
    .line 512
    goto :goto_24

    .line 513
    :cond_24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    :goto_24
    add-int/2addr v0, v3

    .line 518
    return v0
.end method

.method public final setAddedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->addedTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setAlpn(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->alpn:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAuthority(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->authority:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBandwidthDown(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthDown:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBandwidthUp(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthUp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setFingerPrint(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->fingerPrint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setFlow(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->flow:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHeaderType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->headerType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setInsecure(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->insecure:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->localAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->method:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->mode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMtu(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->mtu:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->network:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setObfsPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->obfsPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPinSHA256(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->pinSHA256:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPortHopping(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHopping:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPortHoppingInterval(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->portHoppingInterval:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPreSharedKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->preSharedKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->publicKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setQuicKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setQuicSecurity(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->quicSecurity:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRemarks(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->remarks:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x32c864d19c7efe2L
        0x52624b3685410f7bL    # 7.278345723228068E88
    .end array-data
.end method

.method public final setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->reserved:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSecretKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->secretKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSecurity(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->security:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSeed(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->seed:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setServer(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setServerPort(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->serviceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->shortId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSni(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->sni:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSpiderX(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->spiderX:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubscriptionId(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->subscriptionId:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x7a767a91d11419eL
        0x49e1dacaea3fc5dbL    # 8.154566555990857E47
    .end array-data
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->username:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setXhttpExtra(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpExtra:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setXhttpMode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpMode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 45
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/v2ray/ang/dto/ProfileItem;->configVersion:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/v2ray/ang/dto/ProfileItem;->configType:Lcom/v2ray/ang/dto/EConfigType;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/v2ray/ang/dto/ProfileItem;->subscriptionId:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v4, v0, Lcom/v2ray/ang/dto/ProfileItem;->addedTime:J

    .line 10
    .line 11
    iget-object v6, v0, Lcom/v2ray/ang/dto/ProfileItem;->remarks:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, v0, Lcom/v2ray/ang/dto/ProfileItem;->server:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, v0, Lcom/v2ray/ang/dto/ProfileItem;->serverPort:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v9, v0, Lcom/v2ray/ang/dto/ProfileItem;->password:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v10, v0, Lcom/v2ray/ang/dto/ProfileItem;->method:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v11, v0, Lcom/v2ray/ang/dto/ProfileItem;->flow:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v12, v0, Lcom/v2ray/ang/dto/ProfileItem;->username:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v13, v0, Lcom/v2ray/ang/dto/ProfileItem;->network:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->headerType:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v15, v0, Lcom/v2ray/ang/dto/ProfileItem;->host:Ljava/lang/String;

    .line 30
    .line 31
    move-object/from16 v16, v14

    .line 32
    .line 33
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->path:Ljava/lang/String;

    .line 34
    .line 35
    move-object/from16 v17, v14

    .line 36
    .line 37
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->seed:Ljava/lang/String;

    .line 38
    .line 39
    move-object/from16 v18, v14

    .line 40
    .line 41
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->quicSecurity:Ljava/lang/String;

    .line 42
    .line 43
    move-object/from16 v19, v14

    .line 44
    .line 45
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->quicKey:Ljava/lang/String;

    .line 46
    .line 47
    move-object/from16 v20, v14

    .line 48
    .line 49
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->mode:Ljava/lang/String;

    .line 50
    .line 51
    move-object/from16 v21, v14

    .line 52
    .line 53
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->serviceName:Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v22, v14

    .line 56
    .line 57
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->authority:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v23, v14

    .line 60
    .line 61
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpMode:Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v24, v14

    .line 64
    .line 65
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->xhttpExtra:Ljava/lang/String;

    .line 66
    .line 67
    move-object/from16 v25, v14

    .line 68
    .line 69
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->security:Ljava/lang/String;

    .line 70
    .line 71
    move-object/from16 v26, v14

    .line 72
    .line 73
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->sni:Ljava/lang/String;

    .line 74
    .line 75
    move-object/from16 v27, v14

    .line 76
    .line 77
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->alpn:Ljava/lang/String;

    .line 78
    .line 79
    move-object/from16 v28, v14

    .line 80
    .line 81
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->fingerPrint:Ljava/lang/String;

    .line 82
    .line 83
    move-object/from16 v29, v14

    .line 84
    .line 85
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->insecure:Ljava/lang/Boolean;

    .line 86
    .line 87
    move-object/from16 v30, v14

    .line 88
    .line 89
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->publicKey:Ljava/lang/String;

    .line 90
    .line 91
    move-object/from16 v31, v14

    .line 92
    .line 93
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->shortId:Ljava/lang/String;

    .line 94
    .line 95
    move-object/from16 v32, v14

    .line 96
    .line 97
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->spiderX:Ljava/lang/String;

    .line 98
    .line 99
    move-object/from16 v33, v14

    .line 100
    .line 101
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->secretKey:Ljava/lang/String;

    .line 102
    .line 103
    move-object/from16 v34, v14

    .line 104
    .line 105
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->preSharedKey:Ljava/lang/String;

    .line 106
    .line 107
    move-object/from16 v35, v14

    .line 108
    .line 109
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->localAddress:Ljava/lang/String;

    .line 110
    .line 111
    move-object/from16 v36, v14

    .line 112
    .line 113
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->reserved:Ljava/lang/String;

    .line 114
    .line 115
    move-object/from16 v37, v14

    .line 116
    .line 117
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->mtu:Ljava/lang/Integer;

    .line 118
    .line 119
    move-object/from16 v38, v14

    .line 120
    .line 121
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->obfsPassword:Ljava/lang/String;

    .line 122
    .line 123
    move-object/from16 v39, v14

    .line 124
    .line 125
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->portHopping:Ljava/lang/String;

    .line 126
    .line 127
    move-object/from16 v40, v14

    .line 128
    .line 129
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->portHoppingInterval:Ljava/lang/String;

    .line 130
    .line 131
    move-object/from16 v41, v14

    .line 132
    .line 133
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->pinSHA256:Ljava/lang/String;

    .line 134
    .line 135
    move-object/from16 v42, v14

    .line 136
    .line 137
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthDown:Ljava/lang/String;

    .line 138
    .line 139
    move-object/from16 v43, v14

    .line 140
    .line 141
    iget-object v14, v0, Lcom/v2ray/ang/dto/ProfileItem;->bandwidthUp:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    move-object/from16 v44, v14

    .line 146
    .line 147
    const-string v14, "ProfileItem(configVersion="

    .line 148
    .line 149
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v1, ", configType="

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", subscriptionId="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, ", addedTime="

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, ", remarks="

    .line 180
    .line 181
    const-string v2, ", server="

    .line 182
    .line 183
    invoke-static {v0, v1, v6, v2, v7}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v1, ", serverPort="

    .line 187
    .line 188
    const-string v2, ", password="

    .line 189
    .line 190
    invoke-static {v0, v1, v8, v2, v9}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v1, ", method="

    .line 194
    .line 195
    const-string v2, ", flow="

    .line 196
    .line 197
    invoke-static {v0, v1, v10, v2, v11}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v1, ", username="

    .line 201
    .line 202
    const-string v2, ", network="

    .line 203
    .line 204
    invoke-static {v0, v1, v12, v2, v13}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v1, ", headerType="

    .line 208
    .line 209
    const-string v2, ", host="

    .line 210
    .line 211
    move-object/from16 v3, v16

    .line 212
    .line 213
    invoke-static {v0, v1, v3, v2, v15}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v1, ", path="

    .line 217
    .line 218
    const-string v2, ", seed="

    .line 219
    .line 220
    move-object/from16 v3, v17

    .line 221
    .line 222
    move-object/from16 v4, v18

    .line 223
    .line 224
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v1, ", quicSecurity="

    .line 228
    .line 229
    const-string v2, ", quicKey="

    .line 230
    .line 231
    move-object/from16 v3, v19

    .line 232
    .line 233
    move-object/from16 v4, v20

    .line 234
    .line 235
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const-string v1, ", mode="

    .line 239
    .line 240
    const-string v2, ", serviceName="

    .line 241
    .line 242
    move-object/from16 v3, v21

    .line 243
    .line 244
    move-object/from16 v4, v22

    .line 245
    .line 246
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v1, ", authority="

    .line 250
    .line 251
    const-string v2, ", xhttpMode="

    .line 252
    .line 253
    move-object/from16 v3, v23

    .line 254
    .line 255
    move-object/from16 v4, v24

    .line 256
    .line 257
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string v1, ", xhttpExtra="

    .line 261
    .line 262
    const-string v2, ", security="

    .line 263
    .line 264
    move-object/from16 v3, v25

    .line 265
    .line 266
    move-object/from16 v4, v26

    .line 267
    .line 268
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string v1, ", sni="

    .line 272
    .line 273
    const-string v2, ", alpn="

    .line 274
    .line 275
    move-object/from16 v3, v27

    .line 276
    .line 277
    move-object/from16 v4, v28

    .line 278
    .line 279
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const-string v1, ", fingerPrint="

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-object/from16 v1, v29

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, ", insecure="

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-object/from16 v1, v30

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v1, ", publicKey="

    .line 303
    .line 304
    const-string v2, ", shortId="

    .line 305
    .line 306
    move-object/from16 v3, v31

    .line 307
    .line 308
    move-object/from16 v4, v32

    .line 309
    .line 310
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-string v1, ", spiderX="

    .line 314
    .line 315
    const-string v2, ", secretKey="

    .line 316
    .line 317
    move-object/from16 v3, v33

    .line 318
    .line 319
    move-object/from16 v4, v34

    .line 320
    .line 321
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const-string v1, ", preSharedKey="

    .line 325
    .line 326
    const-string v2, ", localAddress="

    .line 327
    .line 328
    move-object/from16 v3, v35

    .line 329
    .line 330
    move-object/from16 v4, v36

    .line 331
    .line 332
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v1, ", reserved="

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    move-object/from16 v1, v37

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v1, ", mtu="

    .line 346
    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    move-object/from16 v1, v38

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v1, ", obfsPassword="

    .line 356
    .line 357
    const-string v2, ", portHopping="

    .line 358
    .line 359
    move-object/from16 v3, v39

    .line 360
    .line 361
    move-object/from16 v4, v40

    .line 362
    .line 363
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v1, ", portHoppingInterval="

    .line 367
    .line 368
    const-string v2, ", pinSHA256="

    .line 369
    .line 370
    move-object/from16 v3, v41

    .line 371
    .line 372
    move-object/from16 v4, v42

    .line 373
    .line 374
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    const-string v1, ", bandwidthDown="

    .line 378
    .line 379
    const-string v2, ", bandwidthUp="

    .line 380
    .line 381
    move-object/from16 v3, v43

    .line 382
    .line 383
    move-object/from16 v4, v44

    .line 384
    .line 385
    invoke-static {v0, v1, v3, v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string v1, ")"

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    return-object v0
.end method
