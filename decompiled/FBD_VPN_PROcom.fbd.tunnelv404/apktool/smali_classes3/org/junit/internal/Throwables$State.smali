.class abstract enum Lorg/junit/internal/Throwables$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/Throwables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/junit/internal/Throwables$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/junit/internal/Throwables$State;

.field public static final enum DONE:Lorg/junit/internal/Throwables$State;

.field public static final enum PROCESSING_OTHER_CODE:Lorg/junit/internal/Throwables$State;

.field public static final enum PROCESSING_REFLECTION_CODE:Lorg/junit/internal/Throwables$State;

.field public static final enum PROCESSING_TEST_FRAMEWORK_CODE:Lorg/junit/internal/Throwables$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/junit/internal/Throwables$State$1;

    .line 2
    .line 3
    const-string v1, "PROCESSING_OTHER_CODE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/junit/internal/Throwables$State$1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/junit/internal/Throwables$State;->PROCESSING_OTHER_CODE:Lorg/junit/internal/Throwables$State;

    .line 10
    .line 11
    new-instance v1, Lorg/junit/internal/Throwables$State$2;

    .line 12
    .line 13
    const-string v3, "PROCESSING_TEST_FRAMEWORK_CODE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lorg/junit/internal/Throwables$State$2;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/junit/internal/Throwables$State;->PROCESSING_TEST_FRAMEWORK_CODE:Lorg/junit/internal/Throwables$State;

    .line 20
    .line 21
    new-instance v3, Lorg/junit/internal/Throwables$State$3;

    .line 22
    .line 23
    const-string v5, "PROCESSING_REFLECTION_CODE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lorg/junit/internal/Throwables$State$3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lorg/junit/internal/Throwables$State;->PROCESSING_REFLECTION_CODE:Lorg/junit/internal/Throwables$State;

    .line 30
    .line 31
    new-instance v5, Lorg/junit/internal/Throwables$State$4;

    .line 32
    .line 33
    const-string v7, "DONE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lorg/junit/internal/Throwables$State$4;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lorg/junit/internal/Throwables$State;->DONE:Lorg/junit/internal/Throwables$State;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lorg/junit/internal/Throwables$State;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lorg/junit/internal/Throwables$State;->$VALUES:[Lorg/junit/internal/Throwables$State;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/junit/internal/Throwables$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/junit/internal/Throwables$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/junit/internal/Throwables$State;
    .locals 1

    .line 1
    const-class v0, Lorg/junit/internal/Throwables$State;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/junit/internal/Throwables$State;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/junit/internal/Throwables$State;
    .locals 1

    .line 1
    sget-object v0, Lorg/junit/internal/Throwables$State;->$VALUES:[Lorg/junit/internal/Throwables$State;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/junit/internal/Throwables$State;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/junit/internal/Throwables$State;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract processLine(Ljava/lang/String;)Lorg/junit/internal/Throwables$State;
.end method

.method public final processStackTraceElement(Ljava/lang/StackTraceElement;)Lorg/junit/internal/Throwables$State;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "."

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, "()"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lorg/junit/internal/Throwables$State;->processLine(Ljava/lang/String;)Lorg/junit/internal/Throwables$State;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method
