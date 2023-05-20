.class public final Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;
.super Ljava/lang/Object;
.source "StripePaymentController.kt"

# interfaces
.implements Lcom/stripe/android/ApiResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/StripePaymentController;->createSetupIntentCallback(Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ApiResultCallback<",
        "Lcom/stripe/android/model/StripeIntent;",
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0014\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/stripe/android/StripePaymentController$createSetupIntentCallback$1",
        "Lcom/stripe/android/ApiResultCallback;",
        "Lcom/stripe/android/model/StripeIntent;",
        "onError",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "result",
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
.field final synthetic $callback:Lcom/stripe/android/ApiResultCallback;

.field final synthetic $flowOutcome:I

.field final synthetic $requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

.field final synthetic $shouldCancelSource:Z

.field final synthetic $sourceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/stripe/android/StripePaymentController;


# direct methods
.method constructor <init>(Lcom/stripe/android/StripePaymentController;ZLjava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;ILcom/stripe/android/ApiResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "I",
            "Lcom/stripe/android/ApiResultCallback;",
            ")V"
        }
    .end annotation

    .line 600
    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->this$0:Lcom/stripe/android/StripePaymentController;

    iput-boolean p2, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$shouldCancelSource:Z

    iput-object p3, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$sourceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput p5, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$flowOutcome:I

    iput-object p6, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    invoke-interface {v0, p1}, Lcom/stripe/android/ApiResultCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/stripe/android/model/StripeIntent;)V
    .registers 9
    .param p1    # Lcom/stripe/android/model/StripeIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    instance-of v0, p1, Lcom/stripe/android/model/SetupIntent;

    if-eqz v0, :cond_85

    .line 603
    iget-boolean v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$shouldCancelSource:Z

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Lcom/stripe/android/model/StripeIntent;->requiresAction()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 604
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v0}, Lcom/stripe/android/StripePaymentController;->access$getLogger$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$sourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for SetupIntent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v0}, Lcom/stripe/android/StripePaymentController;->access$getWorkContext$p(Lcom/stripe/android/StripePaymentController;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;-><init>(Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;Lcom/stripe/android/model/StripeIntent;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_aa

    .line 637
    :cond_4f
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v0}, Lcom/stripe/android/StripePaymentController;->access$getLogger$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching SetupIntentResult for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    .line 639
    new-instance v1, Lcom/stripe/android/SetupIntentResult;

    move-object v2, p1

    check-cast v2, Lcom/stripe/android/model/SetupIntent;

    iget v3, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$flowOutcome:I

    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v4, p1, v3}, Lcom/stripe/android/StripePaymentController;->access$getFailureMessage(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/StripeIntent;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/stripe/android/SetupIntentResult;-><init>(Lcom/stripe/android/model/SetupIntent;ILjava/lang/String;)V

    check-cast v1, Lcom/stripe/android/model/StripeModel;

    .line 638
    invoke-interface {v0, v1}, Lcom/stripe/android/ApiResultCallback;->onSuccess(Lcom/stripe/android/model/StripeModel;)V

    goto :goto_aa

    .line 643
    :cond_85
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    .line 644
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a SetupIntent, received a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 644
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Exception;

    .line 643
    invoke-interface {v0, v1}, Lcom/stripe/android/ApiResultCallback;->onError(Ljava/lang/Exception;)V

    :goto_aa
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/stripe/android/model/StripeModel;)V
    .registers 2

    .line 600
    check-cast p1, Lcom/stripe/android/model/StripeIntent;

    invoke-virtual {p0, p1}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->onSuccess(Lcom/stripe/android/model/StripeIntent;)V

    return-void
.end method
