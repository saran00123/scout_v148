.class public final enum Lcom/stripe/android/model/Source$Status;
.super Ljava/lang/Enum;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/Source$Status$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/model/Source$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/android/model/Source$Status;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "Canceled",
        "Chargeable",
        "Consumed",
        "Failed",
        "Pending",
        "Companion",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stripe/android/model/Source$Status;

.field public static final enum Canceled:Lcom/stripe/android/model/Source$Status;

.field public static final enum Chargeable:Lcom/stripe/android/model/Source$Status;

.field public static final Companion:Lcom/stripe/android/model/Source$Status$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Consumed:Lcom/stripe/android/model/Source$Status;

.field public static final enum Failed:Lcom/stripe/android/model/Source$Status;

.field public static final enum Pending:Lcom/stripe/android/model/Source$Status;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/stripe/android/model/Source$Status;

    new-instance v1, Lcom/stripe/android/model/Source$Status;

    const/4 v2, 0x0

    const-string v3, "Canceled"

    const-string v4, "canceled"

    .line 193
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/Source$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/Source$Status;->Canceled:Lcom/stripe/android/model/Source$Status;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/Source$Status;

    const/4 v2, 0x1

    const-string v3, "Chargeable"

    const-string v4, "chargeable"

    .line 194
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/Source$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/Source$Status;->Chargeable:Lcom/stripe/android/model/Source$Status;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/Source$Status;

    const/4 v2, 0x2

    const-string v3, "Consumed"

    const-string v4, "consumed"

    .line 195
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/Source$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/Source$Status;->Consumed:Lcom/stripe/android/model/Source$Status;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/Source$Status;

    const/4 v2, 0x3

    const-string v3, "Failed"

    const-string v4, "failed"

    .line 196
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/Source$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/Source$Status;->Failed:Lcom/stripe/android/model/Source$Status;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/Source$Status;

    const/4 v2, 0x4

    const-string v3, "Pending"

    const-string v4, "pending"

    .line 197
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/Source$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/Source$Status;->Pending:Lcom/stripe/android/model/Source$Status;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/model/Source$Status;->$VALUES:[Lcom/stripe/android/model/Source$Status;

    new-instance v0, Lcom/stripe/android/model/Source$Status$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/Source$Status$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/Source$Status;->Companion:Lcom/stripe/android/model/Source$Status$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/model/Source$Status;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCode$p(Lcom/stripe/android/model/Source$Status;)Ljava/lang/String;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/stripe/android/model/Source$Status;->code:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/model/Source$Status;
    .registers 2

    const-class v0, Lcom/stripe/android/model/Source$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/model/Source$Status;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/model/Source$Status;
    .registers 1

    sget-object v0, Lcom/stripe/android/model/Source$Status;->$VALUES:[Lcom/stripe/android/model/Source$Status;

    invoke-virtual {v0}, [Lcom/stripe/android/model/Source$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/model/Source$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/stripe/android/model/Source$Status;->code:Ljava/lang/String;

    return-object v0
.end method