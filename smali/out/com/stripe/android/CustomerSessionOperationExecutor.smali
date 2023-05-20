.class public final Lcom/stripe/android/CustomerSessionOperationExecutor;
.super Ljava/lang/Object;
.source "CustomerSessionOperationExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/CustomerSessionOperationExecutor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \'2\u00020\u0001:\u0001\'BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0010\u000eJ#\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J#\u0010\u0016\u001a\u0004\u0018\u0001H\u0017\"\n\u0008\u0000\u0010\u0017*\u0004\u0018\u00010\t2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002\u00a2\u0006\u0002\u0010\u0019J&\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001cH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u001a\u0010\u001e\u001a\u00020\r2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\t2\u0006\u0010 \u001a\u00020!H\u0002J)\u0010\"\u001a\u0004\u0018\u00010\u000c2\u0006\u0010#\u001a\u00020\u00112\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00050%H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/android/CustomerSessionOperationExecutor;",
        "",
        "stripeRepository",
        "Lcom/stripe/android/networking/StripeRepository;",
        "publishableKey",
        "",
        "stripeAccountId",
        "listeners",
        "",
        "Lcom/stripe/android/CustomerSession$RetrievalListener;",
        "onCustomerUpdated",
        "Lkotlin/Function1;",
        "Lcom/stripe/android/model/Customer;",
        "",
        "(Lcom/stripe/android/networking/StripeRepository;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V",
        "execute",
        "ephemeralKey",
        "Lcom/stripe/android/EphemeralKey;",
        "operation",
        "Lcom/stripe/android/EphemeralOperation;",
        "execute$stripe_release",
        "(Lcom/stripe/android/EphemeralKey;Lcom/stripe/android/EphemeralOperation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getListener",
        "L",
        "operationId",
        "(Ljava/lang/String;)Lcom/stripe/android/CustomerSession$RetrievalListener;",
        "onCustomerRetrieved",
        "result",
        "Lkotlin/Result;",
        "(Lcom/stripe/android/EphemeralOperation;Ljava/lang/Object;)V",
        "onError",
        "listener",
        "error",
        "",
        "retrieveCustomerWithKey",
        "key",
        "productUsage",
        "",
        "(Lcom/stripe/android/EphemeralKey;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private static final Companion:Lcom/stripe/android/CustomerSessionOperationExecutor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REQUIRED_ERROR:Ljava/lang/String; = "API request returned an invalid response."


# instance fields
.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/android/CustomerSession$RetrievalListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCustomerUpdated:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/android/model/Customer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final publishableKey:Ljava/lang/String;

.field private final stripeAccountId:Ljava/lang/String;

.field private final stripeRepository:Lcom/stripe/android/networking/StripeRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/CustomerSessionOperationExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/CustomerSessionOperationExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->Companion:Lcom/stripe/android/CustomerSessionOperationExecutor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/networking/StripeRepository;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .param p1    # Lcom/stripe/android/networking/StripeRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/StripeRepository;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/android/CustomerSession$RetrievalListener;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/model/Customer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stripeRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishableKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCustomerUpdated"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    iput-object p2, p0, Lcom/stripe/android/CustomerSessionOperationExecutor;->publishableKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeAccountId:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/android/CustomerSessionOperationExecutor;->listeners:Ljava/util/Map;

    iput-object p5, p0, Lcom/stripe/android/CustomerSessionOperationExecutor;->onCustomerUpdated:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getListener(Lcom/stripe/android/CustomerSessionOperationExecutor;Ljava/lang/String;)Lcom/stripe/android/CustomerSession$RetrievalListener;
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/stripe/android/CustomerSessionOperationExecutor;->getListener(Ljava/lang/String;)Lcom/stripe/android/CustomerSession$RetrievalListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onCustomerRetrieved(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/EphemeralOperation;Ljava/lang/Object;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/CustomerSessionOperationExecutor;->onCustomerRetrieved(Lcom/stripe/android/EphemeralOperation;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$onError(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/CustomerSession$RetrievalListener;Ljava/lang/Throwable;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/CustomerSessionOperationExecutor;->onError(Lcom/stripe/android/CustomerSession$RetrievalListener;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final getListener(Ljava/lang/String;)Lcom/stripe/android/CustomerSession$RetrievalListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Lcom/stripe/android/CustomerSession$RetrievalListener;",
            ">(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/stripe/android/CustomerSessionOperationExecutor;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/CustomerSession$RetrievalListener;

    return-object p1
.end method

.method private final onCustomerRetrieved(Lcom/stripe/android/EphemeralOperation;Ljava/lang/Object;)V
    .registers 4

    .line 211
    invoke-virtual {p1}, Lcom/stripe/android/EphemeralOperation;->getId$stripe_release()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/android/CustomerSessionOperationExecutor;->getListener(Ljava/lang/String;)Lcom/stripe/android/CustomerSession$RetrievalListener;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/CustomerSession$CustomerRetrievalListener;

    .line 212
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1d

    check-cast p2, Lcom/stripe/android/model/Customer;

    .line 214
    iget-object v0, p0, Lcom/stripe/android/CustomerSessionOperationExecutor;->onCustomerUpdated:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_22

    .line 215
    invoke-interface {p1, p2}, Lcom/stripe/android/CustomerSession$CustomerRetrievalListener;->onCustomerRetrieved(Lcom/stripe/android/model/Customer;)V

    goto :goto_22

    .line 218
    :cond_1d
    check-cast p1, Lcom/stripe/android/CustomerSession$RetrievalListener;

    invoke-direct {p0, p1, v0}, Lcom/stripe/android/CustomerSessionOperationExecutor;->onError(Lcom/stripe/android/CustomerSession$RetrievalListener;Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    return-void
.end method

.method private final onError(Lcom/stripe/android/CustomerSession$RetrievalListener;Ljava/lang/Throwable;)V
    .registers 6

    .line 228
    instance-of v0, p2, Lcom/stripe/android/exception/StripeException;

    const-string v1, ""

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_2e

    .line 230
    move-object v0, p2

    check-cast v0, Lcom/stripe/android/exception/StripeException;

    invoke-virtual {v0}, Lcom/stripe/android/exception/StripeException;->getStatusCode()I

    move-result v2

    .line 231
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_16

    goto :goto_17

    :cond_16
    move-object p2, v1

    .line 232
    :goto_17
    invoke-virtual {v0}, Lcom/stripe/android/exception/StripeException;->getStripeError()Lcom/stripe/android/StripeError;

    move-result-object v0

    .line 229
    invoke-interface {p1, v2, p2, v0}, Lcom/stripe/android/CustomerSession$RetrievalListener;->onError(ILjava/lang/String;Lcom/stripe/android/StripeError;)V

    goto :goto_2e

    :cond_1f
    if-eqz p1, :cond_2e

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_29

    goto :goto_2a

    :cond_29
    move-object p2, v1

    :goto_2a
    const/4 v1, 0x0

    .line 236
    invoke-interface {p1, v0, p2, v1}, Lcom/stripe/android/CustomerSession$RetrievalListener;->onError(ILjava/lang/String;Lcom/stripe/android/StripeError;)V

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public final synthetic execute$stripe_release(Lcom/stripe/android/EphemeralKey;Lcom/stripe/android/EphemeralOperation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/EphemeralKey;",
            "Lcom/stripe/android/EphemeralOperation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;

    if-eqz v3, :cond_1a

    move-object v3, v0

    check-cast v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;

    iget v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1a

    iget v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    sub-int/2addr v0, v5

    iput v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    goto :goto_1f

    :cond_1a
    new-instance v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;

    invoke-direct {v3, v1, v0}, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;-><init>(Lcom/stripe/android/CustomerSessionOperationExecutor;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    iget-object v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 19
    iget v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    const-string v13, "API request returned an invalid response."

    const/4 v14, 0x0

    packed-switch v4, :pswitch_data_5ba

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :pswitch_35
    iget-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/android/EphemeralOperation;

    iget-object v6, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/android/CustomerSessionOperationExecutor;

    :try_start_45
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_4c

    move-object v11, v2

    move-object v2, v5

    goto/16 :goto_571

    :catch_4c
    move-exception v0

    move-object v11, v2

    move-object v2, v5

    goto/16 :goto_58b

    :pswitch_51
    iget-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/android/EphemeralOperation;

    iget-object v6, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/android/CustomerSessionOperationExecutor;

    :try_start_61
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_68

    move-object v15, v2

    move-object v2, v5

    goto/16 :goto_4dc

    :catch_68
    move-exception v0

    move-object v15, v2

    move-object v2, v5

    goto/16 :goto_4f6

    :pswitch_6d
    iget-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/android/EphemeralOperation;

    iget-object v6, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/android/CustomerSessionOperationExecutor;

    :try_start_7d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_80} :catch_84

    move-object v10, v2

    move-object v2, v5

    goto/16 :goto_44c

    :catch_84
    move-exception v0

    move-object v10, v2

    move-object v2, v5

    goto/16 :goto_458

    :pswitch_89
    iget-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/android/EphemeralOperation;

    iget-object v6, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/android/CustomerSessionOperationExecutor;

    :try_start_99
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_a0

    move-object v10, v2

    move-object v2, v5

    goto/16 :goto_39d

    :catch_a0
    move-exception v0

    move-object v10, v2

    move-object v2, v5

    goto/16 :goto_3b7

    :pswitch_a5
    iget-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/android/EphemeralOperation;

    iget-object v6, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/android/CustomerSessionOperationExecutor;

    :try_start_b5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b8} :catch_bc

    move-object v11, v2

    move-object v2, v5

    goto/16 :goto_30d

    :catch_bc
    move-exception v0

    move-object v11, v2

    move-object v2, v5

    goto/16 :goto_327

    :pswitch_c1
    iget-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/android/EphemeralOperation;

    iget-object v6, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/android/CustomerSessionOperationExecutor;

    :try_start_d1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_d4} :catch_d8

    move-object v11, v2

    move-object v2, v5

    goto/16 :goto_27a

    :catch_d8
    move-exception v0

    move-object v11, v2

    move-object v2, v5

    goto/16 :goto_294

    :pswitch_dd
    iget-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/android/EphemeralOperation;

    iget-object v6, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/android/CustomerSessionOperationExecutor;

    :try_start_ed
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_f0} :catch_f4

    move-object v15, v2

    move-object v2, v5

    goto/16 :goto_1e7

    :catch_f4
    move-exception v0

    move-object v15, v2

    move-object v2, v5

    goto/16 :goto_201

    :pswitch_f9
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5b7

    :pswitch_fe
    iget-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/android/EphemeralOperation;

    iget-object v6, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/android/CustomerSessionOperationExecutor;

    :try_start_10e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_111} :catch_117

    move-object/from16 v22, v5

    move-object v5, v2

    move-object/from16 v2, v22

    goto :goto_149

    :catch_117
    move-exception v0

    move-object/from16 v22, v5

    move-object v5, v2

    move-object/from16 v2, v22

    goto :goto_163

    :pswitch_11e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    instance-of v0, v2, Lcom/stripe/android/EphemeralOperation$RetrieveKey;

    if-eqz v0, :cond_18e

    .line 25
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_12a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/CustomerSessionOperationExecutor;

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/EphemeralOperation;->getProductUsage$stripe_release()Ljava/util/Set;

    move-result-object v5

    iput-object v1, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v4, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v5, v3}, Lcom/stripe/android/CustomerSessionOperationExecutor;->retrieveCustomerWithKey(Lcom/stripe/android/EphemeralKey;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_12a .. :try_end_144} :catch_160

    if-ne v0, v12, :cond_147

    return-object v12

    :cond_147
    move-object v6, v1

    move-object v5, v4

    :goto_149
    if-eqz v0, :cond_154

    .line 26
    :try_start_14b
    check-cast v0, Lcom/stripe/android/model/Customer;

    .line 25
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16d

    :catch_152
    move-exception v0

    goto :goto_163

    .line 26
    :cond_154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_160
    .catch Ljava/lang/Throwable; {:try_start_14b .. :try_end_160} :catch_152

    :catch_160
    move-exception v0

    move-object v6, v1

    move-object v5, v4

    .line 25
    :goto_163
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_16d
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 32
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$2;

    invoke-direct {v5, v6, v2, v4, v14}, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$2;-><init>(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/EphemeralOperation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_5b7

    return-object v12

    :cond_18e
    move-object/from16 v6, p1

    .line 36
    instance-of v0, v2, Lcom/stripe/android/EphemeralOperation$Customer$AddSource;

    if-eqz v0, :cond_22c

    .line 37
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_199
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/CustomerSessionOperationExecutor;

    .line 39
    iget-object v4, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getObjectId$stripe_release()Ljava/lang/String;

    move-result-object v5

    .line 41
    iget-object v7, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->publishableKey:Ljava/lang/String;

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/EphemeralOperation;->getProductUsage$stripe_release()Ljava/util/Set;

    move-result-object v8

    .line 43
    move-object v9, v2

    check-cast v9, Lcom/stripe/android/EphemeralOperation$Customer$AddSource;

    invoke-virtual {v9}, Lcom/stripe/android/EphemeralOperation$Customer$AddSource;->getSourceId()Ljava/lang/String;

    move-result-object v9

    .line 44
    move-object v10, v2

    check-cast v10, Lcom/stripe/android/EphemeralOperation$Customer$AddSource;

    invoke-virtual {v10}, Lcom/stripe/android/EphemeralOperation$Customer$AddSource;->getSourceType()Ljava/lang/String;

    move-result-object v10

    .line 45
    new-instance v11, Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getSecret()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeAccountId:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v21}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v15, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v15, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v3

    .line 39
    invoke-interface/range {v4 .. v11}, Lcom/stripe/android/networking/StripeRepository;->addCustomerSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1e2
    .catch Ljava/lang/Throwable; {:try_start_199 .. :try_end_1e2} :catch_1fe

    if-ne v0, v12, :cond_1e5

    return-object v12

    :cond_1e5
    move-object v6, v1

    move-object v4, v15

    :goto_1e7
    if-eqz v0, :cond_1f2

    .line 38
    :try_start_1e9
    check-cast v0, Lcom/stripe/android/model/Source;

    .line 37
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20b

    :catch_1f0
    move-exception v0

    goto :goto_201

    .line 38
    :cond_1f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1fe
    .catch Ljava/lang/Throwable; {:try_start_1e9 .. :try_end_1fe} :catch_1f0

    :catch_1fe
    move-exception v0

    move-object v6, v1

    move-object v4, v15

    .line 37
    :goto_201
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_20b
    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 51
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$3;

    invoke-direct {v5, v6, v2, v4, v14}, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$3;-><init>(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/EphemeralOperation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_5b7

    return-object v12

    .line 63
    :cond_22c
    instance-of v0, v2, Lcom/stripe/android/EphemeralOperation$Customer$DeleteSource;

    if-eqz v0, :cond_2bf

    .line 64
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_235
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/CustomerSessionOperationExecutor;

    .line 66
    iget-object v4, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getObjectId$stripe_release()Ljava/lang/String;

    move-result-object v5

    .line 68
    iget-object v7, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->publishableKey:Ljava/lang/String;

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/EphemeralOperation;->getProductUsage$stripe_release()Ljava/util/Set;

    move-result-object v8

    .line 70
    move-object v9, v2

    check-cast v9, Lcom/stripe/android/EphemeralOperation$Customer$DeleteSource;

    invoke-virtual {v9}, Lcom/stripe/android/EphemeralOperation$Customer$DeleteSource;->getSourceId()Ljava/lang/String;

    move-result-object v9

    .line 71
    new-instance v10, Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getSecret()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeAccountId:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v20}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v11, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v11, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v3

    .line 66
    invoke-interface/range {v4 .. v10}, Lcom/stripe/android/networking/StripeRepository;->deleteCustomerSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_275
    .catch Ljava/lang/Throwable; {:try_start_235 .. :try_end_275} :catch_291

    if-ne v0, v12, :cond_278

    return-object v12

    :cond_278
    move-object v6, v1

    move-object v4, v11

    :goto_27a
    if-eqz v0, :cond_285

    .line 65
    :try_start_27c
    check-cast v0, Lcom/stripe/android/model/Source;

    .line 64
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_29e

    :catch_283
    move-exception v0

    goto :goto_294

    .line 65
    :cond_285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_291
    .catch Ljava/lang/Throwable; {:try_start_27c .. :try_end_291} :catch_283

    :catch_291
    move-exception v0

    move-object v6, v1

    move-object v4, v11

    .line 64
    :goto_294
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_29e
    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$4;

    invoke-direct {v5, v6, v2, v4, v14}, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$4;-><init>(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/EphemeralOperation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_5b7

    return-object v12

    .line 89
    :cond_2bf
    instance-of v0, v2, Lcom/stripe/android/EphemeralOperation$Customer$AttachPaymentMethod;

    if-eqz v0, :cond_353

    .line 90
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_2c8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/CustomerSessionOperationExecutor;

    .line 92
    iget-object v4, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getObjectId$stripe_release()Ljava/lang/String;

    move-result-object v5

    .line 94
    iget-object v7, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->publishableKey:Ljava/lang/String;

    .line 95
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/EphemeralOperation;->getProductUsage$stripe_release()Ljava/util/Set;

    move-result-object v8

    .line 96
    move-object v9, v2

    check-cast v9, Lcom/stripe/android/EphemeralOperation$Customer$AttachPaymentMethod;

    invoke-virtual {v9}, Lcom/stripe/android/EphemeralOperation$Customer$AttachPaymentMethod;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v9

    .line 97
    new-instance v10, Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getSecret()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeAccountId:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v20}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v11, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v11, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v0, 0x7

    iput v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v3

    .line 92
    invoke-interface/range {v4 .. v10}, Lcom/stripe/android/networking/StripeRepository;->attachPaymentMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_308
    .catch Ljava/lang/Throwable; {:try_start_2c8 .. :try_end_308} :catch_324

    if-ne v0, v12, :cond_30b

    return-object v12

    :cond_30b
    move-object v6, v1

    move-object v4, v11

    :goto_30d
    if-eqz v0, :cond_318

    .line 91
    :try_start_30f
    check-cast v0, Lcom/stripe/android/model/PaymentMethod;

    .line 90
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_331

    :catch_316
    move-exception v0

    goto :goto_327

    .line 91
    :cond_318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_324
    .catch Ljava/lang/Throwable; {:try_start_30f .. :try_end_324} :catch_316

    :catch_324
    move-exception v0

    move-object v6, v1

    move-object v4, v11

    .line 90
    :goto_327
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_331
    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 103
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$5;

    invoke-direct {v5, v6, v2, v4, v14}, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$5;-><init>(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/EphemeralOperation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/16 v2, 0x8

    iput v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_5b7

    return-object v12

    .line 115
    :cond_353
    instance-of v0, v2, Lcom/stripe/android/EphemeralOperation$Customer$DetachPaymentMethod;

    if-eqz v0, :cond_3e3

    .line 116
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_35c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/CustomerSessionOperationExecutor;

    .line 118
    iget-object v4, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    .line 119
    iget-object v5, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->publishableKey:Ljava/lang/String;

    .line 120
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/EphemeralOperation;->getProductUsage$stripe_release()Ljava/util/Set;

    move-result-object v7

    .line 121
    move-object v8, v2

    check-cast v8, Lcom/stripe/android/EphemeralOperation$Customer$DetachPaymentMethod;

    invoke-virtual {v8}, Lcom/stripe/android/EphemeralOperation$Customer$DetachPaymentMethod;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v8

    .line 122
    new-instance v9, Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getSecret()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeAccountId:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v9

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v20}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v10, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/16 v0, 0x9

    iput v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v3

    .line 118
    invoke-interface/range {v4 .. v9}, Lcom/stripe/android/networking/StripeRepository;->detachPaymentMethod(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_398
    .catch Ljava/lang/Throwable; {:try_start_35c .. :try_end_398} :catch_3b4

    if-ne v0, v12, :cond_39b

    return-object v12

    :cond_39b
    move-object v6, v1

    move-object v4, v10

    :goto_39d
    if-eqz v0, :cond_3a8

    .line 117
    :try_start_39f
    check-cast v0, Lcom/stripe/android/model/PaymentMethod;

    .line 116
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3c1

    :catch_3a6
    move-exception v0

    goto :goto_3b7

    .line 117
    :cond_3a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_3b4
    .catch Ljava/lang/Throwable; {:try_start_39f .. :try_end_3b4} :catch_3a6

    :catch_3b4
    move-exception v0

    move-object v6, v1

    move-object v4, v10

    .line 116
    :goto_3b7
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3c1
    iput-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$6;

    invoke-direct {v5, v6, v2, v4, v14}, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$6;-><init>(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/EphemeralOperation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/16 v2, 0xa

    iput v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_5b7

    return-object v12

    .line 140
    :cond_3e3
    instance-of v0, v2, Lcom/stripe/android/EphemeralOperation$Customer$GetPaymentMethods;

    if-eqz v0, :cond_484

    .line 141
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_3ec
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/CustomerSessionOperationExecutor;

    .line 142
    iget-object v4, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    .line 143
    new-instance v5, Lcom/stripe/android/model/ListPaymentMethodsParams;

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getObjectId$stripe_release()Ljava/lang/String;

    move-result-object v16

    .line 145
    move-object v7, v2

    check-cast v7, Lcom/stripe/android/EphemeralOperation$Customer$GetPaymentMethods;

    invoke-virtual {v7}, Lcom/stripe/android/EphemeralOperation$Customer$GetPaymentMethods;->getType$stripe_release()Lcom/stripe/android/model/PaymentMethod$Type;

    move-result-object v17

    .line 146
    move-object v7, v2

    check-cast v7, Lcom/stripe/android/EphemeralOperation$Customer$GetPaymentMethods;

    invoke-virtual {v7}, Lcom/stripe/android/EphemeralOperation$Customer$GetPaymentMethods;->getLimit$stripe_release()Ljava/lang/Integer;

    move-result-object v18

    .line 147
    move-object v7, v2

    check-cast v7, Lcom/stripe/android/EphemeralOperation$Customer$GetPaymentMethods;

    invoke-virtual {v7}, Lcom/stripe/android/EphemeralOperation$Customer$GetPaymentMethods;->getEndingBefore$stripe_release()Ljava/lang/String;

    move-result-object v19

    .line 148
    move-object v7, v2

    check-cast v7, Lcom/stripe/android/EphemeralOperation$Customer$GetPaymentMethods;

    invoke-virtual {v7}, Lcom/stripe/android/EphemeralOperation$Customer$GetPaymentMethods;->getStartingAfter$stripe_release()Ljava/lang/String;

    move-result-object v20

    move-object v15, v5

    .line 143
    invoke-direct/range {v15 .. v20}, Lcom/stripe/android/model/ListPaymentMethodsParams;-><init>(Ljava/lang/String;Lcom/stripe/android/model/PaymentMethod$Type;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v7, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->publishableKey:Ljava/lang/String;

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/EphemeralOperation;->getProductUsage$stripe_release()Ljava/util/Set;

    move-result-object v8

    .line 152
    new-instance v9, Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getSecret()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeAccountId:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v9

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v20}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v10, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v3

    .line 142
    invoke-interface/range {v4 .. v9}, Lcom/stripe/android/networking/StripeRepository;->getPaymentMethods(Lcom/stripe/android/model/ListPaymentMethodsParams;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_447
    .catch Ljava/lang/Throwable; {:try_start_3ec .. :try_end_447} :catch_455

    if-ne v0, v12, :cond_44a

    return-object v12

    :cond_44a
    move-object v6, v1

    move-object v4, v10

    .line 152
    :goto_44c
    :try_start_44c
    check-cast v0, Ljava/util/List;

    .line 141
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_452
    .catch Ljava/lang/Throwable; {:try_start_44c .. :try_end_452} :catch_453

    goto :goto_462

    :catch_453
    move-exception v0

    goto :goto_458

    :catch_455
    move-exception v0

    move-object v6, v1

    move-object v4, v10

    :goto_458
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_462
    iput-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 155
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$7;

    invoke-direct {v5, v6, v2, v4, v14}, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$7;-><init>(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/EphemeralOperation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/16 v2, 0xc

    iput v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_5b7

    return-object v12

    .line 167
    :cond_484
    instance-of v0, v2, Lcom/stripe/android/EphemeralOperation$Customer$UpdateDefaultSource;

    if-eqz v0, :cond_522

    .line 168
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_48d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/CustomerSessionOperationExecutor;

    .line 170
    iget-object v4, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getObjectId$stripe_release()Ljava/lang/String;

    move-result-object v5

    .line 172
    iget-object v7, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->publishableKey:Ljava/lang/String;

    .line 173
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/EphemeralOperation;->getProductUsage$stripe_release()Ljava/util/Set;

    move-result-object v8

    .line 174
    move-object v9, v2

    check-cast v9, Lcom/stripe/android/EphemeralOperation$Customer$UpdateDefaultSource;

    invoke-virtual {v9}, Lcom/stripe/android/EphemeralOperation$Customer$UpdateDefaultSource;->getSourceId()Ljava/lang/String;

    move-result-object v9

    .line 175
    move-object v10, v2

    check-cast v10, Lcom/stripe/android/EphemeralOperation$Customer$UpdateDefaultSource;

    invoke-virtual {v10}, Lcom/stripe/android/EphemeralOperation$Customer$UpdateDefaultSource;->getSourceType()Ljava/lang/String;

    move-result-object v10

    .line 176
    new-instance v11, Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getSecret()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeAccountId:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v21}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v15, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v15, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/16 v0, 0xd

    iput v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v3

    .line 170
    invoke-interface/range {v4 .. v11}, Lcom/stripe/android/networking/StripeRepository;->setDefaultCustomerSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4d7
    .catch Ljava/lang/Throwable; {:try_start_48d .. :try_end_4d7} :catch_4f3

    if-ne v0, v12, :cond_4da

    return-object v12

    :cond_4da
    move-object v6, v1

    move-object v4, v15

    :goto_4dc
    if-eqz v0, :cond_4e7

    .line 169
    :try_start_4de
    check-cast v0, Lcom/stripe/android/model/Customer;

    .line 168
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_500

    :catch_4e5
    move-exception v0

    goto :goto_4f6

    .line 169
    :cond_4e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_4f3
    .catch Ljava/lang/Throwable; {:try_start_4de .. :try_end_4f3} :catch_4e5

    :catch_4f3
    move-exception v0

    move-object v6, v1

    move-object v4, v15

    .line 168
    :goto_4f6
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_500
    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 182
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$8;

    invoke-direct {v5, v6, v2, v4, v14}, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$8;-><init>(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/EphemeralOperation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/16 v2, 0xe

    iput v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_5b7

    return-object v12

    .line 186
    :cond_522
    instance-of v0, v2, Lcom/stripe/android/EphemeralOperation$Customer$UpdateShipping;

    if-eqz v0, :cond_5b7

    .line 187
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_52b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/android/CustomerSessionOperationExecutor;

    .line 189
    iget-object v4, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getObjectId$stripe_release()Ljava/lang/String;

    move-result-object v5

    .line 191
    iget-object v7, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->publishableKey:Ljava/lang/String;

    .line 192
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/android/EphemeralOperation;->getProductUsage$stripe_release()Ljava/util/Set;

    move-result-object v8

    .line 193
    move-object v9, v2

    check-cast v9, Lcom/stripe/android/EphemeralOperation$Customer$UpdateShipping;

    invoke-virtual {v9}, Lcom/stripe/android/EphemeralOperation$Customer$UpdateShipping;->getShippingInformation()Lcom/stripe/android/model/ShippingInformation;

    move-result-object v9

    .line 194
    new-instance v10, Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/android/EphemeralKey;->getSecret()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeAccountId:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v20}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v11, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v11, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/16 v0, 0xf

    iput v0, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v3

    .line 189
    invoke-interface/range {v4 .. v10}, Lcom/stripe/android/networking/StripeRepository;->setCustomerShippingInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_56c
    .catch Ljava/lang/Throwable; {:try_start_52b .. :try_end_56c} :catch_588

    if-ne v0, v12, :cond_56f

    return-object v12

    :cond_56f
    move-object v6, v1

    move-object v4, v11

    :goto_571
    if-eqz v0, :cond_57c

    .line 188
    :try_start_573
    check-cast v0, Lcom/stripe/android/model/Customer;

    .line 187
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_595

    :catch_57a
    move-exception v0

    goto :goto_58b

    .line 188
    :cond_57c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_588
    .catch Ljava/lang/Throwable; {:try_start_573 .. :try_end_588} :catch_57a

    :catch_588
    move-exception v0

    move-object v6, v1

    move-object v4, v11

    .line 187
    :goto_58b
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_595
    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 200
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$9;

    invoke-direct {v5, v6, v2, v4, v14}, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$9;-><init>(Lcom/stripe/android/CustomerSessionOperationExecutor;Lcom/stripe/android/EphemeralOperation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v14, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/16 v2, 0x10

    iput v2, v3, Lcom/stripe/android/CustomerSessionOperationExecutor$execute$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_5b7

    return-object v12

    .line 205
    :cond_5b7
    :goto_5b7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_5ba
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_fe
        :pswitch_f9
        :pswitch_dd
        :pswitch_f9
        :pswitch_c1
        :pswitch_f9
        :pswitch_a5
        :pswitch_f9
        :pswitch_89
        :pswitch_f9
        :pswitch_6d
        :pswitch_f9
        :pswitch_51
        :pswitch_f9
        :pswitch_35
        :pswitch_f9
    .end packed-switch
.end method

.method final synthetic retrieveCustomerWithKey(Lcom/stripe/android/EphemeralKey;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/EphemeralKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Customer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/StripeException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    .line 262
    invoke-virtual {p1}, Lcom/stripe/android/EphemeralKey;->getObjectId$stripe_release()Ljava/lang/String;

    move-result-object v1

    .line 264
    new-instance v8, Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual {p1}, Lcom/stripe/android/EphemeralKey;->getSecret()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/android/CustomerSessionOperationExecutor;->stripeAccountId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 261
    invoke-interface {v0, v1, p2, v8, p3}, Lcom/stripe/android/networking/StripeRepository;->retrieveCustomer(Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
