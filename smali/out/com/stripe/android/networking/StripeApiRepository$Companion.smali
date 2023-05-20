.class public final Lcom/stripe/android/networking/StripeApiRepository$Companion;
.super Ljava/lang/Object;
.source "StripeApiRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/networking/StripeApiRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStripeApiRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StripeApiRepository.kt\ncom/stripe/android/networking/StripeApiRepository$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1321:1\n1#2:1322\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0008!\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000e0\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000eH\u0002J$\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\r2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0015\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008\u0015J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004H\u0002J)\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0012\u0010\u0018\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0019\"\u00020\u0001H\u0002\u00a2\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008\u001dJ\u0015\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008 J\u0015\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008#J\u0015\u0010$\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008%J\u0015\u0010&\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008\'J\u001d\u0010(\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008*J\u0010\u0010+\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004H\u0002J\u0015\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008.J\u0015\u0010/\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u00080J\u0015\u00101\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u00082J\u0015\u00103\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u00084J\u0015\u00105\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u00086J\u0015\u00107\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u00089R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00048@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00048@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0007\u00a8\u0006:"
    }
    d2 = {
        "Lcom/stripe/android/networking/StripeApiRepository$Companion;",
        "",
        "()V",
        "DNS_CACHE_TTL_PROPERTY_NAME",
        "",
        "paymentMethodsUrl",
        "getPaymentMethodsUrl$stripe_release",
        "()Ljava/lang/String;",
        "sourcesUrl",
        "getSourcesUrl$stripe_release",
        "tokensUrl",
        "getTokensUrl$stripe_release",
        "createExpandParam",
        "",
        "",
        "expandFields",
        "createVerificationParam",
        "verificationId",
        "userOneTimeCode",
        "getAddCustomerSourceUrl",
        "customerId",
        "getAddCustomerSourceUrl$stripe_release",
        "getApiUrl",
        "path",
        "args",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;",
        "getAttachPaymentMethodUrl",
        "paymentMethodId",
        "getAttachPaymentMethodUrl$stripe_release",
        "getCancelPaymentIntentSourceUrl",
        "paymentIntentId",
        "getCancelPaymentIntentSourceUrl$stripe_release",
        "getCancelSetupIntentSourceUrl",
        "setupIntentId",
        "getCancelSetupIntentSourceUrl$stripe_release",
        "getConfirmPaymentIntentUrl",
        "getConfirmPaymentIntentUrl$stripe_release",
        "getConfirmSetupIntentUrl",
        "getConfirmSetupIntentUrl$stripe_release",
        "getDeleteCustomerSourceUrl",
        "sourceId",
        "getDeleteCustomerSourceUrl$stripe_release",
        "getEdgeUrl",
        "getIssuingCardPinUrl",
        "cardId",
        "getIssuingCardPinUrl$stripe_release",
        "getRetrieveCustomerUrl",
        "getRetrieveCustomerUrl$stripe_release",
        "getRetrievePaymentIntentUrl",
        "getRetrievePaymentIntentUrl$stripe_release",
        "getRetrieveSetupIntentUrl",
        "getRetrieveSetupIntentUrl$stripe_release",
        "getRetrieveSourceApiUrl",
        "getRetrieveSourceApiUrl$stripe_release",
        "getRetrieveTokenApiUrl",
        "tokenId",
        "getRetrieveTokenApiUrl$stripe_release",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1151
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createExpandParam(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/util/List;)Ljava/util/Map;
    .registers 2

    .line 1151
    invoke-direct {p0, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->createExpandParam(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createVerificationParam(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    .line 1151
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->createVerificationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getApiUrl(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1151
    invoke-direct {p0, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs synthetic access$getApiUrl(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1151
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEdgeUrl(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1151
    invoke-direct {p0, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getEdgeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final createExpandParam(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1315
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    move-object p1, v1

    :goto_e
    if-eqz p1, :cond_1a

    const-string v0, "expand"

    .line 1316
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    :cond_1a
    if-eqz v1, :cond_1d

    goto :goto_21

    .line 1317
    :cond_1d
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_21
    return-object v1
.end method

.method private final createVerificationParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1158
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "id"

    .line 1159
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "one_time_code"

    .line 1160
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 1158
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final getApiUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.stripe.com/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final varargs getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 1303
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getEdgeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.stripe.com/edge-internal/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic getAddCustomerSourceUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "customerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1245
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "customers/%s/sources"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getAttachPaymentMethodUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "paymentMethodId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "payment_methods/%s/attach"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getCancelPaymentIntentSourceUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "payment_intents/%s/source_cancel"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getCancelSetupIntentSourceUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "setupIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "setup_intents/%s/source_cancel"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getConfirmPaymentIntentUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1200
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "payment_intents/%s/confirm"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getConfirmSetupIntentUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "setupIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "setup_intents/%s/confirm"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getDeleteCustomerSourceUrl$stripe_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "customerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "customers/%s/sources/%s"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getIssuingCardPinUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1299
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "issuing/cards/%s/pin"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getPaymentMethodsUrl$stripe_release()Ljava/lang/String;
    .registers 3

    .line 1183
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const-string v1, "payment_methods"

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getRetrieveCustomerUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "customerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "customers/%s"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getRetrievePaymentIntentUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1191
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "payment_intents/%s"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getRetrieveSetupIntentUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "setupIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "setup_intents/%s"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getRetrieveSourceApiUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "sourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1281
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "sources/%s"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getRetrieveTokenApiUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "tokenId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "tokens/%s"

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getSourcesUrl$stripe_release()Ljava/lang/String;
    .registers 3

    .line 1176
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const-string v1, "sources"

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getTokensUrl$stripe_release()Ljava/lang/String;
    .registers 3

    .line 1169
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const-string v1, "tokens"

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
