.class public final Lcom/stripe/android/networking/RequestHeadersFactory$Api;
.super Lcom/stripe/android/networking/RequestHeadersFactory;
.source "RequestHeadersFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/networking/RequestHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequestHeadersFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestHeadersFactory.kt\ncom/stripe/android/networking/RequestHeadersFactory$Api\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1#2:118\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\n\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0002\u0010\rJ\u0014\u0010\u0017\u001a\u00020\n2\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u000f8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/android/networking/RequestHeadersFactory$Api;",
        "Lcom/stripe/android/networking/RequestHeadersFactory;",
        "options",
        "Lcom/stripe/android/networking/ApiRequest$Options;",
        "appInfo",
        "Lcom/stripe/android/AppInfo;",
        "locale",
        "Ljava/util/Locale;",
        "systemPropertySupplier",
        "Lkotlin/Function1;",
        "",
        "apiVersion",
        "sdkVersion",
        "(Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Ljava/util/Locale;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V",
        "extraHeaders",
        "",
        "getExtraHeaders",
        "()Ljava/util/Map;",
        "languageTag",
        "getLanguageTag",
        "()Ljava/lang/String;",
        "userAgent",
        "getUserAgent",
        "createStripeClientUserAgent",
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
.field private static final Companion:Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_SYSTEM_PROPERTY_SUPPLIER:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROP_USER_AGENT:Ljava/lang/String; = "http.agent"


# instance fields
.field private final apiVersion:Ljava/lang/String;

.field private final appInfo:Lcom/stripe/android/AppInfo;

.field private final locale:Ljava/util/Locale;

.field private final options:Lcom/stripe/android/networking/ApiRequest$Options;

.field private final sdkVersion:Ljava/lang/String;

.field private final systemPropertySupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->Companion:Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion;

    .line 85
    sget-object v0, Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;->INSTANCE:Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->DEFAULT_SYSTEM_PROPERTY_SUPPLIER:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Ljava/util/Locale;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Locale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lcom/stripe/android/AppInfo;",
            "Ljava/util/Locale;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemPropertySupplier"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiVersion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/stripe/android/networking/RequestHeadersFactory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object p2, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->appInfo:Lcom/stripe/android/AppInfo;

    iput-object p3, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->locale:Ljava/util/Locale;

    iput-object p4, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->systemPropertySupplier:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->apiVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Ljava/util/Locale;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_7

    const/4 p2, 0x0

    .line 26
    check-cast p2, Lcom/stripe/android/AppInfo;

    :cond_7
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_15

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p2, "Locale.getDefault()"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_15
    move-object v3, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1c

    .line 28
    sget-object p4, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->DEFAULT_SYSTEM_PROPERTY_SUPPLIER:Lkotlin/jvm/functions/Function1;

    :cond_1c
    move-object v4, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_2b

    .line 29
    sget-object p2, Lcom/stripe/android/ApiVersion;->Companion:Lcom/stripe/android/ApiVersion$Companion;

    invoke-virtual {p2}, Lcom/stripe/android/ApiVersion$Companion;->get$stripe_release()Lcom/stripe/android/ApiVersion;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stripe/android/ApiVersion;->getCode$stripe_release()Ljava/lang/String;

    move-result-object p5

    :cond_2b
    move-object v5, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_32

    const-string p6, "AndroidBindings/16.1.1"

    :cond_32
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/networking/RequestHeadersFactory$Api;-><init>(Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Ljava/util/Locale;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final createStripeClientUserAgent(Lcom/stripe/android/AppInfo;)Ljava/lang/String;
    .registers 6

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    const/4 v1, 0x6

    .line 68
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "os.name"

    const-string v3, "android"

    .line 69
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "os.version"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "bindings.version"

    const-string v3, "16.1.1"

    .line 71
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "lang"

    const-string v3, "Java"

    .line 72
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "publisher"

    const-string v3, "Stripe"

    .line 73
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 74
    iget-object v2, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->systemPropertySupplier:Lkotlin/jvm/functions/Function1;

    const-string v3, "http.agent"

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 68
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    if-eqz p1, :cond_5a

    .line 76
    invoke-virtual {p1}, Lcom/stripe/android/AppInfo;->createClientHeaders$stripe_release()Ljava/util/Map;

    move-result-object p1

    goto :goto_5b

    :cond_5a
    const/4 p1, 0x0

    :goto_5b
    if-eqz p1, :cond_5e

    goto :goto_62

    :cond_5e
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 75
    :goto_62
    invoke-static {v1, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 67
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 78
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSONObject(\n            \u2026\n            ).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic createStripeClientUserAgent$default(Lcom/stripe/android/networking/RequestHeadersFactory$Api;Lcom/stripe/android/AppInfo;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 66
    check-cast p1, Lcom/stripe/android/AppInfo;

    :cond_7
    invoke-direct {p0, p1}, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->createStripeClientUserAgent(Lcom/stripe/android/AppInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getLanguageTag()Ljava/lang/String;
    .registers 8

    .line 34
    iget-object v0, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "locale.toString()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_"

    const-string v3, "-"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return-object v0
.end method


# virtual methods
.method protected getExtraHeaders()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    .line 48
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 49
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    iget-object v1, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->appInfo:Lcom/stripe/android/AppInfo;

    invoke-direct {p0, v1}, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->createStripeClientUserAgent(Lcom/stripe/android/AppInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Stripe-Client-User-Agent"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    iget-object v1, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->apiVersion:Ljava/lang/String;

    const-string v2, "Stripe-Version"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual {v2}, Lcom/stripe/android/networking/ApiRequest$Options;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual {v1}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_60

    const-string v3, "Stripe-Account"

    .line 55
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    goto :goto_61

    :cond_60
    move-object v1, v2

    :goto_61
    if-eqz v1, :cond_64

    goto :goto_68

    .line 56
    :cond_64
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 53
    :goto_68
    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->options:Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual {v1}, Lcom/stripe/android/networking/ApiRequest$Options;->getIdempotencyKey$stripe_release()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    const-string v3, "Idempotency-Key"

    .line 59
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    goto :goto_80

    :cond_7f
    move-object v1, v2

    :goto_80
    if-eqz v1, :cond_83

    goto :goto_87

    .line 60
    :cond_83
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 57
    :goto_87
    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 62
    invoke-direct {p0}, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9b

    const-string v2, "Accept-Language"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    :cond_9b
    if-eqz v2, :cond_9e

    goto :goto_a2

    :cond_9e
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 61
    :goto_a2
    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .registers 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/stripe/android/networking/RequestHeadersFactory;->Companion:Lcom/stripe/android/networking/RequestHeadersFactory$Companion;

    iget-object v2, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/stripe/android/networking/RequestHeadersFactory$Companion;->getUserAgent$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 42
    iget-object v1, p0, Lcom/stripe/android/networking/RequestHeadersFactory$Api;->appInfo:Lcom/stripe/android/AppInfo;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/stripe/android/AppInfo;->toUserAgent$stripe_release()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 40
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, " "

    .line 43
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
