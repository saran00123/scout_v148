.class public final Lcom/stripe/android/PaymentAuthConfig;
.super Ljava/lang/Object;
.source "PaymentAuthConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentAuthConfig$Builder;,
        Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;,
        Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization;,
        Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2LabelCustomization;,
        Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2TextBoxCustomization;,
        Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization;,
        Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2UiCustomization;,
        Lcom/stripe/android/PaymentAuthConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00082\u00020\u0001:\u0008\u0007\u0008\t\n\u000b\u000c\r\u000eB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/android/PaymentAuthConfig;",
        "",
        "stripe3ds2Config",
        "Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;",
        "(Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;)V",
        "getStripe3ds2Config$stripe_release",
        "()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;",
        "Builder",
        "Companion",
        "Stripe3ds2ButtonCustomization",
        "Stripe3ds2Config",
        "Stripe3ds2LabelCustomization",
        "Stripe3ds2TextBoxCustomization",
        "Stripe3ds2ToolbarCustomization",
        "Stripe3ds2UiCustomization",
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
.field public static final Companion:Lcom/stripe/android/PaymentAuthConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT:Lcom/stripe/android/PaymentAuthConfig;

.field private static instance:Lcom/stripe/android/PaymentAuthConfig;


# instance fields
.field private final stripe3ds2Config:Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/PaymentAuthConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/PaymentAuthConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/PaymentAuthConfig;->Companion:Lcom/stripe/android/PaymentAuthConfig$Companion;

    .line 566
    new-instance v0, Lcom/stripe/android/PaymentAuthConfig$Builder;

    invoke-direct {v0}, Lcom/stripe/android/PaymentAuthConfig$Builder;-><init>()V

    .line 567
    new-instance v1, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config$Builder;

    invoke-direct {v1}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config$Builder;->build()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/PaymentAuthConfig$Builder;->set3ds2Config(Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;)Lcom/stripe/android/PaymentAuthConfig$Builder;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Lcom/stripe/android/PaymentAuthConfig$Builder;->build()Lcom/stripe/android/PaymentAuthConfig;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/PaymentAuthConfig;->DEFAULT:Lcom/stripe/android/PaymentAuthConfig;

    return-void
.end method

.method private constructor <init>(Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/PaymentAuthConfig;->stripe3ds2Config:Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Lcom/stripe/android/PaymentAuthConfig;-><init>(Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lcom/stripe/android/PaymentAuthConfig;
    .registers 1

    .line 19
    sget-object v0, Lcom/stripe/android/PaymentAuthConfig;->DEFAULT:Lcom/stripe/android/PaymentAuthConfig;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/stripe/android/PaymentAuthConfig;
    .registers 1

    .line 19
    sget-object v0, Lcom/stripe/android/PaymentAuthConfig;->instance:Lcom/stripe/android/PaymentAuthConfig;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/stripe/android/PaymentAuthConfig;)V
    .registers 1

    .line 19
    sput-object p0, Lcom/stripe/android/PaymentAuthConfig;->instance:Lcom/stripe/android/PaymentAuthConfig;

    return-void
.end method

.method public static final get()Lcom/stripe/android/PaymentAuthConfig;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/PaymentAuthConfig;->Companion:Lcom/stripe/android/PaymentAuthConfig$Companion;

    invoke-virtual {v0}, Lcom/stripe/android/PaymentAuthConfig$Companion;->get()Lcom/stripe/android/PaymentAuthConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final init(Lcom/stripe/android/PaymentAuthConfig;)V
    .registers 2
    .param p0    # Lcom/stripe/android/PaymentAuthConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/android/PaymentAuthConfig;->Companion:Lcom/stripe/android/PaymentAuthConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/android/PaymentAuthConfig$Companion;->init(Lcom/stripe/android/PaymentAuthConfig;)V

    return-void
.end method


# virtual methods
.method public final getStripe3ds2Config$stripe_release()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/stripe/android/PaymentAuthConfig;->stripe3ds2Config:Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;

    return-object v0
.end method
