.class public final enum Lcom/stripe/android/paymentsheet/ui/SheetMode;
.super Ljava/lang/Enum;
.source "SheetMode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/paymentsheet/ui/SheetMode;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/ui/SheetMode;",
        "",
        "height",
        "",
        "behaviourState",
        "(Ljava/lang/String;III)V",
        "getBehaviourState",
        "()I",
        "getHeight",
        "Full",
        "FullCollapsed",
        "Wrapped",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/paymentsheet/ui/SheetMode;

.field public static final enum Full:Lcom/stripe/android/paymentsheet/ui/SheetMode;

.field public static final enum FullCollapsed:Lcom/stripe/android/paymentsheet/ui/SheetMode;

.field public static final enum Wrapped:Lcom/stripe/android/paymentsheet/ui/SheetMode;


# instance fields
.field private final behaviourState:I

.field private final height:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/stripe/android/paymentsheet/ui/SheetMode;

    new-instance v2, Lcom/stripe/android/paymentsheet/ui/SheetMode;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "Full"

    .line 10
    invoke-direct {v2, v5, v4, v3, v0}, Lcom/stripe/android/paymentsheet/ui/SheetMode;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/stripe/android/paymentsheet/ui/SheetMode;->Full:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    aput-object v2, v1, v4

    new-instance v0, Lcom/stripe/android/paymentsheet/ui/SheetMode;

    const/4 v2, 0x4

    const/4 v4, 0x1

    const-string v5, "FullCollapsed"

    .line 15
    invoke-direct {v0, v5, v4, v3, v2}, Lcom/stripe/android/paymentsheet/ui/SheetMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/stripe/android/paymentsheet/ui/SheetMode;->FullCollapsed:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    aput-object v0, v1, v4

    new-instance v0, Lcom/stripe/android/paymentsheet/ui/SheetMode;

    const/4 v3, 0x2

    const-string v4, "Wrapped"

    const/4 v5, -0x2

    .line 20
    invoke-direct {v0, v4, v3, v5, v2}, Lcom/stripe/android/paymentsheet/ui/SheetMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/stripe/android/paymentsheet/ui/SheetMode;->Wrapped:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    aput-object v0, v1, v3

    sput-object v1, Lcom/stripe/android/paymentsheet/ui/SheetMode;->$VALUES:[Lcom/stripe/android/paymentsheet/ui/SheetMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/stripe/android/paymentsheet/ui/SheetMode;->height:I

    iput p4, p0, Lcom/stripe/android/paymentsheet/ui/SheetMode;->behaviourState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/paymentsheet/ui/SheetMode;
    .registers 2

    const-class v0, Lcom/stripe/android/paymentsheet/ui/SheetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/paymentsheet/ui/SheetMode;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/paymentsheet/ui/SheetMode;
    .registers 1

    sget-object v0, Lcom/stripe/android/paymentsheet/ui/SheetMode;->$VALUES:[Lcom/stripe/android/paymentsheet/ui/SheetMode;

    invoke-virtual {v0}, [Lcom/stripe/android/paymentsheet/ui/SheetMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/paymentsheet/ui/SheetMode;

    return-object v0
.end method


# virtual methods
.method public final getBehaviourState()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/stripe/android/paymentsheet/ui/SheetMode;->behaviourState:I

    return v0
.end method

.method public final getHeight()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/stripe/android/paymentsheet/ui/SheetMode;->height:I

    return v0
.end method
