.class public final enum Lcom/stripe/android/view/PaymentFlowPage;
.super Ljava/lang/Enum;
.source "PaymentFlowPage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/view/PaymentFlowPage;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentFlowPage;",
        "",
        "titleResId",
        "",
        "(Ljava/lang/String;II)V",
        "getTitleResId",
        "()I",
        "ShippingInfo",
        "ShippingMethod",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/view/PaymentFlowPage;

.field public static final enum ShippingInfo:Lcom/stripe/android/view/PaymentFlowPage;

.field public static final enum ShippingMethod:Lcom/stripe/android/view/PaymentFlowPage;


# instance fields
.field private final titleResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/stripe/android/view/PaymentFlowPage;

    new-instance v1, Lcom/stripe/android/view/PaymentFlowPage;

    .line 9
    sget v2, Lcom/stripe/android/R$string;->title_add_an_address:I

    const/4 v3, 0x0

    const-string v4, "ShippingInfo"

    invoke-direct {v1, v4, v3, v2}, Lcom/stripe/android/view/PaymentFlowPage;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/android/view/PaymentFlowPage;->ShippingInfo:Lcom/stripe/android/view/PaymentFlowPage;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/view/PaymentFlowPage;

    .line 10
    sget v2, Lcom/stripe/android/R$string;->title_select_shipping_method:I

    const/4 v3, 0x1

    const-string v4, "ShippingMethod"

    invoke-direct {v1, v4, v3, v2}, Lcom/stripe/android/view/PaymentFlowPage;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/android/view/PaymentFlowPage;->ShippingMethod:Lcom/stripe/android/view/PaymentFlowPage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/stripe/android/view/PaymentFlowPage;->$VALUES:[Lcom/stripe/android/view/PaymentFlowPage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/stripe/android/view/PaymentFlowPage;->titleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/view/PaymentFlowPage;
    .registers 2

    const-class v0, Lcom/stripe/android/view/PaymentFlowPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/view/PaymentFlowPage;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/view/PaymentFlowPage;
    .registers 1

    sget-object v0, Lcom/stripe/android/view/PaymentFlowPage;->$VALUES:[Lcom/stripe/android/view/PaymentFlowPage;

    invoke-virtual {v0}, [Lcom/stripe/android/view/PaymentFlowPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/view/PaymentFlowPage;

    return-object v0
.end method


# virtual methods
.method public final getTitleResId()I
    .registers 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 7
    iget v0, p0, Lcom/stripe/android/view/PaymentFlowPage;->titleResId:I

    return v0
.end method
