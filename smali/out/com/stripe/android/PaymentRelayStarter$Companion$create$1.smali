.class public final Lcom/stripe/android/PaymentRelayStarter$Companion$create$1;
.super Ljava/lang/Object;
.source "PaymentRelayStarter.kt"

# interfaces
.implements Lcom/stripe/android/PaymentRelayStarter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/PaymentRelayStarter$Companion;->create$stripe_release(Lcom/stripe/android/view/AuthActivityStarter$Host;I)Lcom/stripe/android/PaymentRelayStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/stripe/android/PaymentRelayStarter$Companion$create$1",
        "Lcom/stripe/android/PaymentRelayStarter;",
        "start",
        "",
        "args",
        "Lcom/stripe/android/PaymentRelayStarter$Args;",
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
.field final synthetic $host:Lcom/stripe/android/view/AuthActivityStarter$Host;

.field final synthetic $requestCode:I


# direct methods
.method constructor <init>(Lcom/stripe/android/view/AuthActivityStarter$Host;I)V
    .registers 3

    .line 26
    iput-object p1, p0, Lcom/stripe/android/PaymentRelayStarter$Companion$create$1;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    iput p2, p0, Lcom/stripe/android/PaymentRelayStarter$Companion$create$1;->$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/stripe/android/PaymentRelayStarter$Args;)V
    .registers 13
    .param p1    # Lcom/stripe/android/PaymentRelayStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/stripe/android/PaymentController$Result;

    .line 29
    invoke-virtual {p1}, Lcom/stripe/android/PaymentRelayStarter$Args;->getStripeIntent()Lcom/stripe/android/model/StripeIntent;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/stripe/android/model/StripeIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    move-object v2, v1

    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/stripe/android/PaymentRelayStarter$Args;->getSource()Lcom/stripe/android/model/Source;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 31
    invoke-virtual {p1}, Lcom/stripe/android/PaymentRelayStarter$Args;->getException()Lcom/stripe/android/exception/StripeException;

    move-result-object v4

    .line 32
    invoke-virtual {p1}, Lcom/stripe/android/PaymentRelayStarter$Args;->getStripeAccountId()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a

    const/4 v10, 0x0

    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v10}, Lcom/stripe/android/PaymentController$Result;-><init>(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    invoke-virtual {v0}, Lcom/stripe/android/PaymentController$Result;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/stripe/android/PaymentRelayStarter$Companion$create$1;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    .line 35
    const-class v1, Lcom/stripe/android/view/PaymentRelayActivity;

    .line 37
    iget v2, p0, Lcom/stripe/android/PaymentRelayStarter$Companion$create$1;->$requestCode:I

    .line 34
    invoke-virtual {v0, v1, p1, v2}, Lcom/stripe/android/view/AuthActivityStarter$Host;->startActivityForResult$stripe_release(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method public bridge synthetic start(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Lcom/stripe/android/PaymentRelayStarter$Args;

    invoke-virtual {p0, p1}, Lcom/stripe/android/PaymentRelayStarter$Companion$create$1;->start(Lcom/stripe/android/PaymentRelayStarter$Args;)V

    return-void
.end method
