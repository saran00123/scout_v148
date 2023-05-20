.class public final Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;
.super Ljava/lang/Object;
.source "PaymentAuthConfig.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization;",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization;",
        "()V",
        "buttonCustomization",
        "Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;",
        "build",
        "setBackgroundColor",
        "hexColor",
        "",
        "setCornerRadius",
        "cornerRadius",
        "",
        "setTextColor",
        "setTextFontName",
        "fontName",
        "setTextFontSize",
        "fontSize",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final buttonCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;

    invoke-direct {v0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;-><init>()V

    check-cast v0, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    iput-object v0, p0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;->buttonCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 154
    new-instance v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization;

    iget-object v1, p0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;->buttonCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    invoke-direct {v0, v1}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization;-><init>(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;->build()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization;

    move-result-object v0

    return-object v0
.end method

.method public final setBackgroundColor(Ljava/lang/String;)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hexColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;

    .line 101
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;->buttonCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;->setBackgroundColor(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setCornerRadius(I)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 111
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;

    .line 112
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;->buttonCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;->setCornerRadius(I)V

    return-object v0
.end method

.method public final setTextColor(Ljava/lang/String;)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hexColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;

    .line 134
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;->buttonCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;->setTextColor(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setTextFontName(Ljava/lang/String;)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fontName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;

    .line 123
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;->buttonCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;->setTextFontName(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setTextFontSize(I)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 144
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;

    .line 145
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ButtonCustomization$Builder;->buttonCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;->setTextFontSize(I)V

    return-object v0
.end method
