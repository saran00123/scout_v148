.class final Lcom/stripe/android/networking/StripeApiRepository$createToken$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StripeApiRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/networking/StripeApiRepository;->createToken(Lcom/stripe/android/model/TokenParams;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/android/networking/RequestId;",
        "Lkotlin/Unit;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "requestId",
        "Lcom/stripe/android/networking/RequestId;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $tokenParams:Lcom/stripe/android/model/TokenParams;

.field final synthetic this$0:Lcom/stripe/android/networking/StripeApiRepository;


# direct methods
.method constructor <init>(Lcom/stripe/android/networking/StripeApiRepository;Lcom/stripe/android/model/TokenParams;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/networking/StripeApiRepository$createToken$2;->this$0:Lcom/stripe/android/networking/StripeApiRepository;

    iput-object p2, p0, Lcom/stripe/android/networking/StripeApiRepository$createToken$2;->$tokenParams:Lcom/stripe/android/model/TokenParams;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 65
    check-cast p1, Lcom/stripe/android/networking/RequestId;

    invoke-virtual {p0, p1}, Lcom/stripe/android/networking/StripeApiRepository$createToken$2;->invoke(Lcom/stripe/android/networking/RequestId;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/android/networking/RequestId;)V
    .registers 6
    .param p1    # Lcom/stripe/android/networking/RequestId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 470
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository$createToken$2;->this$0:Lcom/stripe/android/networking/StripeApiRepository;

    .line 471
    invoke-static {v0}, Lcom/stripe/android/networking/StripeApiRepository;->access$getAnalyticsDataFactory$p(Lcom/stripe/android/networking/StripeApiRepository;)Lcom/stripe/android/networking/AnalyticsDataFactory;

    move-result-object v1

    .line 472
    iget-object v2, p0, Lcom/stripe/android/networking/StripeApiRepository$createToken$2;->$tokenParams:Lcom/stripe/android/model/TokenParams;

    invoke-virtual {v2}, Lcom/stripe/android/model/TokenParams;->getAttribution$stripe_release()Ljava/util/Set;

    move-result-object v2

    .line 473
    iget-object v3, p0, Lcom/stripe/android/networking/StripeApiRepository$createToken$2;->$tokenParams:Lcom/stripe/android/model/TokenParams;

    invoke-virtual {v3}, Lcom/stripe/android/model/TokenParams;->getTokenType$stripe_release()Lcom/stripe/android/model/Token$Type;

    move-result-object v3

    .line 471
    invoke-virtual {v1, v2, v3, p1}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createTokenCreationParams$stripe_release(Ljava/util/Set;Lcom/stripe/android/model/Token$Type;Lcom/stripe/android/networking/RequestId;)Ljava/util/Map;

    move-result-object p1

    .line 470
    invoke-virtual {v0, p1}, Lcom/stripe/android/networking/StripeApiRepository;->fireAnalyticsRequest$stripe_release(Ljava/util/Map;)V

    return-void
.end method