.class public final enum Lorg/android/spdy/SslVersion;
.super Ljava/lang/Enum;
.source "SslVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/android/spdy/SslVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/android/spdy/SslVersion;

.field public static final enum SLIGHT_VERSION_V1:Lorg/android/spdy/SslVersion;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 8
    new-instance v0, Lorg/android/spdy/SslVersion;

    const/4 v1, 0x0

    const-string v2, "SLIGHT_VERSION_V1"

    invoke-direct {v0, v2, v1, v1}, Lorg/android/spdy/SslVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SslVersion;->SLIGHT_VERSION_V1:Lorg/android/spdy/SslVersion;

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Lorg/android/spdy/SslVersion;

    sget-object v2, Lorg/android/spdy/SslVersion;->SLIGHT_VERSION_V1:Lorg/android/spdy/SslVersion;

    aput-object v2, v0, v1

    sput-object v0, Lorg/android/spdy/SslVersion;->$VALUES:[Lorg/android/spdy/SslVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lorg/android/spdy/SslVersion;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/spdy/SslVersion;
    .registers 2

    .line 3
    const-class v0, Lorg/android/spdy/SslVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/android/spdy/SslVersion;

    return-object p0
.end method

.method public static values()[Lorg/android/spdy/SslVersion;
    .registers 1

    .line 3
    sget-object v0, Lorg/android/spdy/SslVersion;->$VALUES:[Lorg/android/spdy/SslVersion;

    invoke-virtual {v0}, [Lorg/android/spdy/SslVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/spdy/SslVersion;

    return-object v0
.end method


# virtual methods
.method getint()I
    .registers 2

    .line 17
    iget v0, p0, Lorg/android/spdy/SslVersion;->code:I

    return v0
.end method
