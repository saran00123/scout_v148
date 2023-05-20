.class public final Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PaymentAuthWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/PaymentAuthWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentAuthWebViewClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentAuthWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentAuthWebView.kt\ncom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,295:1\n1#2:296\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 02\u00020\u0001:\u00010B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u001e\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\t2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\tH\u0002J\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\tH\u0002J\u0010\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0017H\u0002J\u0010\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0017H\u0002J\u0008\u0010#\u001a\u00020\u0019H\u0002J\u001a\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020&2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\'\u001a\u00020\u00192\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0017H\u0002J\u0018\u0010+\u001a\u00020\u00112\u0006\u0010%\u001a\u00020&2\u0006\u0010,\u001a\u00020-H\u0017J\u0018\u0010+\u001a\u00020\u00112\u0006\u0010%\u001a\u00020&2\u0006\u0010.\u001a\u00020\tH\u0016J\u0010\u0010/\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\r\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "activity",
        "Landroid/app/Activity;",
        "logger",
        "Lcom/stripe/android/Logger;",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "clientSecret",
        "",
        "returnUrl",
        "(Landroid/app/Activity;Lcom/stripe/android/Logger;Landroid/widget/ProgressBar;Ljava/lang/String;Ljava/lang/String;)V",
        "<set-?>",
        "completionUrlParam",
        "getCompletionUrlParam",
        "()Ljava/lang/String;",
        "hasLoadedBlank",
        "",
        "getHasLoadedBlank$stripe_release",
        "()Z",
        "setHasLoadedBlank$stripe_release",
        "(Z)V",
        "userReturnUri",
        "Landroid/net/Uri;",
        "hideProgressBar",
        "",
        "isAllowedUrl",
        "url",
        "allowedUrls",
        "",
        "isAuthenticateUrl",
        "isCompletionUrl",
        "isPredefinedReturnUrl",
        "uri",
        "isReturnUrl",
        "onAuthCompleted",
        "onPageFinished",
        "view",
        "Landroid/webkit/WebView;",
        "openIntent",
        "intent",
        "Landroid/content/Intent;",
        "openIntentScheme",
        "shouldOverrideUrlLoading",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "urlString",
        "updateCompletionUrl",
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
.field private static final AUTHENTICATE_URLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BLANK_PAGE:Ljava/lang/String; = "about:blank"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COMPLETION_URLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARAM_PAYMENT_CLIENT_SECRET:Ljava/lang/String; = "payment_intent_client_secret"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_RETURN_URL:Ljava/lang/String; = "return_url"

.field public static final PARAM_SETUP_CLIENT_SECRET:Ljava/lang/String; = "setup_intent_client_secret"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final clientSecret:Ljava/lang/String;

.field private completionUrlParam:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasLoadedBlank:Z

.field private final logger:Lcom/stripe/android/Logger;

.field private final progressBar:Landroid/widget/ProgressBar;

.field private final userReturnUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->Companion:Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient$Companion;

    const-string v0, "https://hooks.stripe.com/three_d_secure/authenticate"

    .line 280
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->AUTHENTICATE_URLS:Ljava/util/Set;

    const-string v0, "https://hooks.stripe.com/redirect/complete/src_"

    const-string v1, "https://hooks.stripe.com/3d_secure/complete/tdsrc_"

    .line 286
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->COMPLETION_URLS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/stripe/android/Logger;Landroid/widget/ProgressBar;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ProgressBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBar"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    iput-object p3, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->progressBar:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->clientSecret:Ljava/lang/String;

    if-eqz p5, :cond_26

    .line 117
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iput-object p1, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->userReturnUri:Landroid/net/Uri;

    return-void
.end method

.method private final hideProgressBar()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    const-string v1, "PaymentAuthWebViewClient#hideProgressBar()"

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private final isAllowedUrl(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 149
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 150
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_1b
    return v1
.end method

.method private final isAuthenticateUrl(Ljava/lang/String;)Z
    .registers 3

    .line 144
    sget-object v0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->AUTHENTICATE_URLS:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->isAllowedUrl(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method private final isCompletionUrl(Ljava/lang/String;)Z
    .registers 3

    .line 146
    sget-object v0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->COMPLETION_URLS:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->isAllowedUrl(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method private final isPredefinedReturnUrl(Landroid/net/Uri;)Z
    .registers 3

    .line 268
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stripejs://use_stripe_sdk/return_url"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isReturnUrl(Landroid/net/Uri;)Z
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    const-string v1, "PaymentAuthWebViewClient#isReturnUrl()"

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->isPredefinedReturnUrl(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    return v1

    .line 238
    :cond_f
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->userReturnUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v0, :cond_45

    .line 242
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->userReturnUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->userReturnUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->userReturnUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    return v1

    .line 245
    :cond_45
    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4c

    return v2

    .line 253
    :cond_4c
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "payment_intent_client_secret"

    .line 255
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 256
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6b

    :cond_5d
    const-string v1, "setup_intent_client_secret"

    .line 257
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 258
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6b

    :cond_6a
    const/4 p1, 0x0

    .line 261
    :goto_6b
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->clientSecret:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final onAuthCompleted()V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    const-string v1, "PaymentAuthWebViewClient#onAuthCompleted()"

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final openIntent(Landroid/content/Intent;)V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    const-string v1, "PaymentAuthWebViewClient#openIntent()"

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 196
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;

    .line 197
    iget-object v0, v0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 198
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 196
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_23

    :catch_18
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    :goto_23
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alipays"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3a

    .line 205
    invoke-direct {p0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->onAuthCompleted()V

    :cond_3a
    return-void
.end method

.method private final openIntentScheme(Landroid/net/Uri;)V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    const-string v1, "PaymentAuthWebViewClient#openIntentScheme()"

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 182
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;

    .line 183
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "Intent.parseUri(uri.toSt\u2026Intent.URI_INTENT_SCHEME)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->openIntent(Landroid/content/Intent;)V

    .line 184
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 182
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_23} :catch_24

    goto :goto_2f

    :catch_24
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 184
    :goto_2f
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 185
    invoke-direct {p0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->onAuthCompleted()V

    :cond_38
    return-void
.end method

.method private final updateCompletionUrl(Landroid/net/Uri;)V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    const-string v1, "PaymentAuthWebViewClient#updateCompletionUrl()"

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->isAuthenticateUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "return_url"

    .line 213
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 218
    :goto_1e
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2c

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v0, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    :goto_2d
    if-nez v0, :cond_31

    .line 219
    iput-object p1, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->completionUrlParam:Ljava/lang/String;

    :cond_31
    return-void
.end method


# virtual methods
.method public final getCompletionUrlParam()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->completionUrlParam:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasLoadedBlank$stripe_release()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->hasLoadedBlank:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentAuthWebViewClient#onPageFinished() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 126
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 128
    iget-boolean p1, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->hasLoadedBlank:Z

    if-nez p1, :cond_25

    .line 131
    invoke-direct {p0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->hideProgressBar()V

    :cond_25
    if-eqz p2, :cond_30

    .line 134
    invoke-direct {p0, p2}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->isCompletionUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 135
    invoke-direct {p0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->onAuthCompleted()V

    :cond_30
    return-void
.end method

.method public final setHasLoadedBlank$stripe_release(Z)V
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->hasLoadedBlank:Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    const-string v1, "PaymentAuthWebViewClient#shouldOverrideUrlLoading(WebResourceRequest)"

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 229
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "request.url.toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentAuthWebViewClient#shouldOverrideUrlLoading() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 160
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "uri"

    .line 161
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->updateCompletionUrl(Landroid/net/Uri;)V

    .line 163
    invoke-direct {p0, v0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->isReturnUrl(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3e

    .line 164
    iget-object p1, p0, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->logger:Lcom/stripe/android/Logger;

    const-string p2, "PaymentAuthWebViewClient#shouldOverrideUrlLoading() - handle return URL"

    invoke-interface {p1, p2}, Lcom/stripe/android/Logger;->debug(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->onAuthCompleted()V

    goto :goto_67

    .line 167
    :cond_3e
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "intent"

    invoke-static {v3, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 168
    invoke-direct {p0, v0}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->openIntentScheme(Landroid/net/Uri;)V

    goto :goto_67

    .line 170
    :cond_4e
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 173
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, p1}, Lcom/stripe/android/view/PaymentAuthWebView$PaymentAuthWebViewClient;->openIntent(Landroid/content/Intent;)V

    goto :goto_67

    .line 176
    :cond_63
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    :goto_67
    return v2
.end method
