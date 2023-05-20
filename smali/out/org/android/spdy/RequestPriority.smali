.class public final enum Lorg/android/spdy/RequestPriority;
.super Ljava/lang/Enum;
.source "RequestPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/android/spdy/RequestPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/android/spdy/RequestPriority;

.field public static final enum DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

.field public static final enum HIGH:Lorg/android/spdy/RequestPriority;

.field public static final enum HIGHEST:Lorg/android/spdy/RequestPriority;

.field public static final enum IDLE:Lorg/android/spdy/RequestPriority;

.field public static final enum LOW:Lorg/android/spdy/RequestPriority;

.field public static final enum LOWEST:Lorg/android/spdy/RequestPriority;

.field public static final enum MEDIUM:Lorg/android/spdy/RequestPriority;


# instance fields
.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 10
    new-instance v0, Lorg/android/spdy/RequestPriority;

    const/4 v1, 0x0

    const-string v2, "HIGHEST"

    invoke-direct {v0, v2, v1, v1}, Lorg/android/spdy/RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/RequestPriority;->HIGHEST:Lorg/android/spdy/RequestPriority;

    .line 14
    new-instance v0, Lorg/android/spdy/RequestPriority;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2, v2}, Lorg/android/spdy/RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/RequestPriority;->HIGH:Lorg/android/spdy/RequestPriority;

    .line 18
    new-instance v0, Lorg/android/spdy/RequestPriority;

    const/4 v3, 0x2

    const-string v4, "MEDIUM"

    invoke-direct {v0, v4, v3, v3}, Lorg/android/spdy/RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/RequestPriority;->MEDIUM:Lorg/android/spdy/RequestPriority;

    .line 22
    new-instance v0, Lorg/android/spdy/RequestPriority;

    const/4 v4, 0x3

    const-string v5, "LOW"

    invoke-direct {v0, v5, v4, v4}, Lorg/android/spdy/RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/RequestPriority;->LOW:Lorg/android/spdy/RequestPriority;

    .line 26
    new-instance v0, Lorg/android/spdy/RequestPriority;

    const/4 v5, 0x4

    const-string v6, "LOWEST"

    invoke-direct {v0, v6, v5, v5}, Lorg/android/spdy/RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/RequestPriority;->LOWEST:Lorg/android/spdy/RequestPriority;

    .line 30
    new-instance v0, Lorg/android/spdy/RequestPriority;

    const/4 v6, 0x5

    const-string v7, "IDLE"

    invoke-direct {v0, v7, v6, v6}, Lorg/android/spdy/RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/RequestPriority;->IDLE:Lorg/android/spdy/RequestPriority;

    .line 32
    new-instance v0, Lorg/android/spdy/RequestPriority;

    const/4 v7, 0x6

    const-string v8, "DEFAULT_PRIORITY"

    invoke-direct {v0, v8, v7, v2}, Lorg/android/spdy/RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const/4 v0, 0x7

    .line 5
    new-array v0, v0, [Lorg/android/spdy/RequestPriority;

    sget-object v8, Lorg/android/spdy/RequestPriority;->HIGHEST:Lorg/android/spdy/RequestPriority;

    aput-object v8, v0, v1

    sget-object v1, Lorg/android/spdy/RequestPriority;->HIGH:Lorg/android/spdy/RequestPriority;

    aput-object v1, v0, v2

    sget-object v1, Lorg/android/spdy/RequestPriority;->MEDIUM:Lorg/android/spdy/RequestPriority;

    aput-object v1, v0, v3

    sget-object v1, Lorg/android/spdy/RequestPriority;->LOW:Lorg/android/spdy/RequestPriority;

    aput-object v1, v0, v4

    sget-object v1, Lorg/android/spdy/RequestPriority;->LOWEST:Lorg/android/spdy/RequestPriority;

    aput-object v1, v0, v5

    sget-object v1, Lorg/android/spdy/RequestPriority;->IDLE:Lorg/android/spdy/RequestPriority;

    aput-object v1, v0, v6

    sget-object v1, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    aput-object v1, v0, v7

    sput-object v0, Lorg/android/spdy/RequestPriority;->$VALUES:[Lorg/android/spdy/RequestPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lorg/android/spdy/RequestPriority;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/spdy/RequestPriority;
    .registers 2

    .line 5
    const-class v0, Lorg/android/spdy/RequestPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/android/spdy/RequestPriority;

    return-object p0
.end method

.method public static values()[Lorg/android/spdy/RequestPriority;
    .registers 1

    .line 5
    sget-object v0, Lorg/android/spdy/RequestPriority;->$VALUES:[Lorg/android/spdy/RequestPriority;

    invoke-virtual {v0}, [Lorg/android/spdy/RequestPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/spdy/RequestPriority;

    return-object v0
.end method


# virtual methods
.method getPriorityInt()I
    .registers 2

    .line 41
    iget v0, p0, Lorg/android/spdy/RequestPriority;->priority:I

    return v0
.end method
