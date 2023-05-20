.class public final enum Lcom/stripe/android/view/CardInputWidget$Field;
.super Ljava/lang/Enum;
.source "CardInputWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/CardInputWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/view/CardInputWidget$Field;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/view/CardInputWidget$Field;",
        "",
        "(Ljava/lang/String;I)V",
        "Number",
        "Expiry",
        "Cvc",
        "PostalCode",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/view/CardInputWidget$Field;

.field public static final enum Cvc:Lcom/stripe/android/view/CardInputWidget$Field;

.field public static final enum Expiry:Lcom/stripe/android/view/CardInputWidget$Field;

.field public static final enum Number:Lcom/stripe/android/view/CardInputWidget$Field;

.field public static final enum PostalCode:Lcom/stripe/android/view/CardInputWidget$Field;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/stripe/android/view/CardInputWidget$Field;

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$Field;

    const/4 v2, 0x0

    const-string v3, "Number"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/CardInputWidget$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/CardInputWidget$Field;->Number:Lcom/stripe/android/view/CardInputWidget$Field;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$Field;

    const/4 v2, 0x1

    const-string v3, "Expiry"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/CardInputWidget$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/CardInputWidget$Field;->Expiry:Lcom/stripe/android/view/CardInputWidget$Field;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$Field;

    const/4 v2, 0x2

    const-string v3, "Cvc"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/CardInputWidget$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/CardInputWidget$Field;->Cvc:Lcom/stripe/android/view/CardInputWidget$Field;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$Field;

    const/4 v2, 0x3

    const-string v3, "PostalCode"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/CardInputWidget$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/CardInputWidget$Field;->PostalCode:Lcom/stripe/android/view/CardInputWidget$Field;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/view/CardInputWidget$Field;->$VALUES:[Lcom/stripe/android/view/CardInputWidget$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/view/CardInputWidget$Field;
    .registers 2

    const-class v0, Lcom/stripe/android/view/CardInputWidget$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/view/CardInputWidget$Field;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/view/CardInputWidget$Field;
    .registers 1

    sget-object v0, Lcom/stripe/android/view/CardInputWidget$Field;->$VALUES:[Lcom/stripe/android/view/CardInputWidget$Field;

    invoke-virtual {v0}, [Lcom/stripe/android/view/CardInputWidget$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/view/CardInputWidget$Field;

    return-object v0
.end method
