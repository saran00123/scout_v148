.class public final Lcom/stripe/android/networking/StripeApiRepository;
.super Ljava/lang/Object;
.source "StripeApiRepository.kt"

# interfaces
.implements Lcom/stripe/android/networking/StripeRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData;,
        Lcom/stripe/android/networking/StripeApiRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00dc\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u00a6\u00012\u00020\u0001:\u0004\u00a6\u0001\u00a7\u0001Bs\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0016JI\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(JA\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0006\u0010+\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,J+\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u00052\u0006\u00100\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101J+\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u00052\u0006\u00100\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101J#\u00105\u001a\u0004\u0018\u0001062\u0006\u0010$\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107J1\u00108\u001a\u0004\u0018\u00010.2\u0006\u00109\u001a\u00020:2\u0006\u00100\u001a\u00020\'2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00050<H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010=J1\u0010>\u001a\u0004\u0018\u0001032\u0006\u0010?\u001a\u00020@2\u0006\u00100\u001a\u00020\'2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00050<H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AJ*\u0010B\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020D0C2\u0006\u0010E\u001a\u00020\u00052\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00050<H\u0002J!\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020I2\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010JJ#\u0010K\u001a\u0004\u0018\u00010*2\u0006\u0010L\u001a\u00020M2\u0006\u00100\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010NJ#\u0010O\u001a\u0004\u0018\u00010 2\u0006\u0010P\u001a\u00020Q2\u0006\u00100\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010RJ#\u0010S\u001a\u0004\u0018\u00010T2\u0006\u0010U\u001a\u00020V2\u0006\u00100\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010WJA\u0010X\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,J9\u0010Y\u001a\u0004\u0018\u00010*2\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0006\u0010+\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010ZJ\u0008\u0010[\u001a\u00020\\H\u0002JI\u0010]\u001a\u0004\u0018\u0001H^\"\u0008\u0008\u0000\u0010^*\u00020_2\u0006\u0010`\u001a\u00020a2\u000c\u0010b\u001a\u0008\u0012\u0004\u0012\u0002H^0c2\u0014\u0010d\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010f\u0012\u0004\u0012\u00020g0eH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010hJ\u001a\u0010i\u001a\u00020g2\u0006\u0010j\u001a\u00020k2\u0008\u0010l\u001a\u0004\u0018\u00010fH\u0002J!\u0010i\u001a\u00020g2\u0012\u0010m\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020D0CH\u0001\u00a2\u0006\u0002\u0008nJ\u0008\u0010o\u001a\u00020gH\u0002J#\u0010p\u001a\u0004\u0018\u00010q2\u0006\u0010r\u001a\u00020s2\u0006\u00100\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010tJ\u0015\u0010u\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0005H\u0001\u00a2\u0006\u0002\u0008vJ\u0019\u0010w\u001a\u00020x2\u0006\u00100\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010yJ=\u0010z\u001a\u0008\u0012\u0004\u0012\u00020*0<2\u0006\u0010{\u001a\u00020|2\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010}J\u0011\u0010~\u001a\u00020g2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0002J.\u0010\u0081\u0001\u001a\u00030\u0080\u00012\u0006\u0010`\u001a\u00020a2\u0014\u0010d\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010f\u0012\u0004\u0012\u00020g0eH\u0001\u00a2\u0006\u0003\u0008\u0082\u0001J0\u0010\u0083\u0001\u001a\u00030\u0080\u00012\u0008\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0014\u0010d\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010f\u0012\u0004\u0012\u00020g0eH\u0001\u00a2\u0006\u0003\u0008\u0086\u0001J\u0012\u0010\u0087\u0001\u001a\u00020g2\u0007\u0010\u0088\u0001\u001a\u00020\\H\u0002J4\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u00012\u0006\u0010!\u001a\u00020\u00052\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u008b\u0001J9\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00052\u0007\u0010\u008d\u0001\u001a\u00020\u00052\u0007\u0010\u008e\u0001\u001a\u00020\u00052\u0007\u0010\u008f\u0001\u001a\u00020\u00052\u0007\u0010\u0090\u0001\u001a\u00020\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0091\u0001J$\u0010\u0092\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u0094\u0001\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107J3\u0010\u0095\u0001\u001a\u0004\u0018\u00010.2\u0006\u0010E\u001a\u00020\u00052\u0006\u00100\u001a\u00020\'2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00050<H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0096\u0001J3\u0010\u0097\u0001\u001a\u0004\u0018\u0001032\u0006\u0010E\u001a\u00020\u00052\u0006\u00100\u001a\u00020\'2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00050<H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0096\u0001J,\u0010\u0098\u0001\u001a\u0004\u0018\u00010 2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u00100\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101JF\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u008a\u00012\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u009c\u0001JK\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u008a\u00012\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J0\u0010\u009e\u0001\u001a\u0004\u0018\u0001062\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u00012\u0007\u0010\u00a1\u0001\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u00a2\u0001J@\u0010\u00a3\u0001\u001a\u00020g2\u0007\u0010\u008d\u0001\u001a\u00020\u00052\u0007\u0010\u00a4\u0001\u001a\u00020\u00052\u0007\u0010\u008e\u0001\u001a\u00020\u00052\u0007\u0010\u008f\u0001\u001a\u00020\u00052\u0007\u0010\u0090\u0001\u001a\u00020\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u00a5\u0001R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lcom/stripe/android/networking/StripeApiRepository;",
        "Lcom/stripe/android/networking/StripeRepository;",
        "context",
        "Landroid/content/Context;",
        "publishableKey",
        "",
        "appInfo",
        "Lcom/stripe/android/AppInfo;",
        "logger",
        "Lcom/stripe/android/Logger;",
        "stripeApiRequestExecutor",
        "Lcom/stripe/android/networking/ApiRequestExecutor;",
        "analyticsRequestExecutor",
        "Lcom/stripe/android/networking/AnalyticsRequestExecutor;",
        "fingerprintDataRepository",
        "Lcom/stripe/android/FingerprintDataRepository;",
        "analyticsDataFactory",
        "Lcom/stripe/android/networking/AnalyticsDataFactory;",
        "fingerprintParamsUtils",
        "Lcom/stripe/android/networking/FingerprintParamsUtils;",
        "apiVersion",
        "sdkVersion",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;)V",
        "analyticsRequestFactory",
        "Lcom/stripe/android/networking/AnalyticsRequest$Factory;",
        "apiRequestFactory",
        "Lcom/stripe/android/networking/ApiRequest$Factory;",
        "fingerprintData",
        "Lcom/stripe/android/FingerprintData;",
        "getFingerprintData",
        "()Lcom/stripe/android/FingerprintData;",
        "addCustomerSource",
        "Lcom/stripe/android/model/Source;",
        "customerId",
        "productUsageTokens",
        "",
        "sourceId",
        "sourceType",
        "requestOptions",
        "Lcom/stripe/android/networking/ApiRequest$Options;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "attachPaymentMethod",
        "Lcom/stripe/android/model/PaymentMethod;",
        "paymentMethodId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelPaymentIntentSource",
        "Lcom/stripe/android/model/PaymentIntent;",
        "paymentIntentId",
        "options",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelSetupIntentSource",
        "Lcom/stripe/android/model/SetupIntent;",
        "setupIntentId",
        "complete3ds2Auth",
        "Lcom/stripe/android/model/Stripe3ds2AuthResult;",
        "(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmPaymentIntent",
        "confirmPaymentIntentParams",
        "Lcom/stripe/android/model/ConfirmPaymentIntentParams;",
        "expandFields",
        "",
        "(Lcom/stripe/android/model/ConfirmPaymentIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmSetupIntent",
        "confirmSetupIntentParams",
        "Lcom/stripe/android/model/ConfirmSetupIntentParams;",
        "(Lcom/stripe/android/model/ConfirmSetupIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createClientSecretParam",
        "",
        "",
        "clientSecret",
        "createFile",
        "Lcom/stripe/android/model/StripeFile;",
        "fileParams",
        "Lcom/stripe/android/model/StripeFileParams;",
        "(Lcom/stripe/android/model/StripeFileParams;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createPaymentMethod",
        "paymentMethodCreateParams",
        "Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "(Lcom/stripe/android/model/PaymentMethodCreateParams;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createSource",
        "sourceParams",
        "Lcom/stripe/android/model/SourceParams;",
        "(Lcom/stripe/android/model/SourceParams;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createToken",
        "Lcom/stripe/android/model/Token;",
        "tokenParams",
        "Lcom/stripe/android/model/TokenParams;",
        "(Lcom/stripe/android/model/TokenParams;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteCustomerSource",
        "detachPaymentMethod",
        "(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disableDnsCache",
        "Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData;",
        "fetchStripeModel",
        "ModelType",
        "Lcom/stripe/android/model/StripeModel;",
        "apiRequest",
        "Lcom/stripe/android/networking/ApiRequest;",
        "jsonParser",
        "Lcom/stripe/android/model/parsers/ModelJsonParser;",
        "onResponse",
        "Lkotlin/Function1;",
        "Lcom/stripe/android/networking/RequestId;",
        "",
        "(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fireAnalyticsRequest",
        "event",
        "Lcom/stripe/android/AnalyticsEvent;",
        "requestId",
        "params",
        "fireAnalyticsRequest$stripe_release",
        "fireFingerprintRequest",
        "getCardMetadata",
        "Lcom/stripe/android/model/CardMetadata;",
        "bin",
        "Lcom/stripe/android/cards/Bin;",
        "(Lcom/stripe/android/cards/Bin;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDetachPaymentMethodUrl",
        "getDetachPaymentMethodUrl$stripe_release",
        "getFpxBankStatus",
        "Lcom/stripe/android/model/FpxBankStatuses;",
        "(Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPaymentMethods",
        "listPaymentMethodsParams",
        "Lcom/stripe/android/model/ListPaymentMethodsParams;",
        "(Lcom/stripe/android/model/ListPaymentMethodsParams;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleApiError",
        "response",
        "Lcom/stripe/android/networking/StripeResponse;",
        "makeApiRequest",
        "makeApiRequest$stripe_release",
        "makeFileUploadRequest",
        "fileUploadRequest",
        "Lcom/stripe/android/networking/FileUploadRequest;",
        "makeFileUploadRequest$stripe_release",
        "resetDnsCache",
        "dnsCacheData",
        "retrieveCustomer",
        "Lcom/stripe/android/model/Customer;",
        "(Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrieveIssuingCardPin",
        "cardId",
        "verificationId",
        "userOneTimeCode",
        "ephemeralKeySecret",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrieveObject",
        "Lorg/json/JSONObject;",
        "url",
        "retrievePaymentIntent",
        "(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrieveSetupIntent",
        "retrieveSource",
        "setCustomerShippingInfo",
        "shippingInformation",
        "Lcom/stripe/android/model/ShippingInformation;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setDefaultCustomerSource",
        "start3ds2Auth",
        "authParams",
        "Lcom/stripe/android/model/Stripe3ds2AuthParams;",
        "stripeIntentId",
        "(Lcom/stripe/android/model/Stripe3ds2AuthParams;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateIssuingCardPin",
        "newPin",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "DnsCacheData",
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
.field public static final Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DNS_CACHE_TTL_PROPERTY_NAME:Ljava/lang/String; = "networkaddress.cache.ttl"


# instance fields
.field private final analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

.field private final analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

.field private final analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

.field private final apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

.field private final appInfo:Lcom/stripe/android/AppInfo;

.field private final fingerprintDataRepository:Lcom/stripe/android/FingerprintDataRepository;

.field private final fingerprintParamsUtils:Lcom/stripe/android/networking/FingerprintParamsUtils;

.field private final logger:Lcom/stripe/android/Logger;

.field private final publishableKey:Ljava/lang/String;

.field private final stripeApiRequestExecutor:Lcom/stripe/android/networking/ApiRequestExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 17
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7fc

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;)V
    .registers 18
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f8

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;)V
    .registers 19
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;)V
    .registers 20
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7e0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;)V
    .registers 21
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7c0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;)V
    .registers 22
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/FingerprintDataRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x780

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;)V
    .registers 23
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/FingerprintDataRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/networking/AnalyticsDataFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x700

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;)V
    .registers 24
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/FingerprintDataRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/networking/AnalyticsDataFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/networking/FingerprintParamsUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x600

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;)V
    .registers 25
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/FingerprintDataRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/networking/AnalyticsDataFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/networking/FingerprintParamsUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v11, 0x0

    const/16 v12, 0x400

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/AppInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/AnalyticsRequestExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/FingerprintDataRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/networking/AnalyticsDataFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/networking/FingerprintParamsUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "publishableKey"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "logger"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "stripeApiRequestExecutor"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "analyticsRequestExecutor"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fingerprintDataRepository"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "analyticsDataFactory"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fingerprintParamsUtils"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "apiVersion"

    invoke-static {p10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkVersion"

    invoke-static {p11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/android/networking/StripeApiRepository;->publishableKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/networking/StripeApiRepository;->appInfo:Lcom/stripe/android/AppInfo;

    iput-object p4, p0, Lcom/stripe/android/networking/StripeApiRepository;->logger:Lcom/stripe/android/Logger;

    iput-object p5, p0, Lcom/stripe/android/networking/StripeApiRepository;->stripeApiRequestExecutor:Lcom/stripe/android/networking/ApiRequestExecutor;

    iput-object p6, p0, Lcom/stripe/android/networking/StripeApiRepository;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    iput-object p7, p0, Lcom/stripe/android/networking/StripeApiRepository;->fingerprintDataRepository:Lcom/stripe/android/FingerprintDataRepository;

    iput-object p8, p0, Lcom/stripe/android/networking/StripeApiRepository;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    iput-object p9, p0, Lcom/stripe/android/networking/StripeApiRepository;->fingerprintParamsUtils:Lcom/stripe/android/networking/FingerprintParamsUtils;

    .line 81
    new-instance p1, Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    iget-object p2, p0, Lcom/stripe/android/networking/StripeApiRepository;->logger:Lcom/stripe/android/Logger;

    invoke-direct {p1, p2}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;-><init>(Lcom/stripe/android/Logger;)V

    iput-object p1, p0, Lcom/stripe/android/networking/StripeApiRepository;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    .line 82
    new-instance p1, Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 83
    iget-object p2, p0, Lcom/stripe/android/networking/StripeApiRepository;->appInfo:Lcom/stripe/android/AppInfo;

    .line 82
    invoke-direct {p1, p2, p10, p11}, Lcom/stripe/android/networking/ApiRequest$Factory;-><init>(Lcom/stripe/android/AppInfo;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 92
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 27

    move-object v1, p1

    move/from16 v0, p12

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 68
    move-object v2, v3

    check-cast v2, Lcom/stripe/android/AppInfo;

    move-object v4, v2

    goto :goto_f

    :cond_d
    move-object/from16 v4, p3

    :goto_f
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1b

    .line 69
    sget-object v2, Lcom/stripe/android/Logger;->Companion:Lcom/stripe/android/Logger$Companion;

    invoke-virtual {v2}, Lcom/stripe/android/Logger$Companion;->noop$stripe_release()Lcom/stripe/android/Logger;

    move-result-object v2

    move-object v5, v2

    goto :goto_1d

    :cond_1b
    move-object/from16 v5, p4

    :goto_1d
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2a

    .line 70
    new-instance v2, Lcom/stripe/android/networking/ApiRequestExecutor$Default;

    invoke-direct {v2, v5}, Lcom/stripe/android/networking/ApiRequestExecutor$Default;-><init>(Lcom/stripe/android/Logger;)V

    check-cast v2, Lcom/stripe/android/networking/ApiRequestExecutor;

    move-object v6, v2

    goto :goto_2c

    :cond_2a
    move-object/from16 v6, p5

    :goto_2c
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_3a

    .line 72
    new-instance v2, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;

    const/4 v7, 0x2

    invoke-direct {v2, v5, v3, v7, v3}, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;-><init>(Lcom/stripe/android/Logger;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    move-object v7, v2

    goto :goto_3c

    :cond_3a
    move-object/from16 v7, p6

    :goto_3c
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_49

    .line 74
    new-instance v2, Lcom/stripe/android/FingerprintDataRepository$Default;

    invoke-direct {v2, p1}, Lcom/stripe/android/FingerprintDataRepository$Default;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/stripe/android/FingerprintDataRepository;

    move-object v8, v2

    goto :goto_4b

    :cond_49
    move-object/from16 v8, p7

    :goto_4b
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_57

    .line 76
    new-instance v2, Lcom/stripe/android/networking/AnalyticsDataFactory;

    move-object v3, p2

    invoke-direct {v2, p1, p2}, Lcom/stripe/android/networking/AnalyticsDataFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v9, v2

    goto :goto_5a

    :cond_57
    move-object v3, p2

    move-object/from16 v9, p8

    :goto_5a
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_65

    .line 77
    new-instance v2, Lcom/stripe/android/networking/FingerprintParamsUtils;

    invoke-direct {v2}, Lcom/stripe/android/networking/FingerprintParamsUtils;-><init>()V

    move-object v10, v2

    goto :goto_67

    :cond_65
    move-object/from16 v10, p9

    :goto_67
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_77

    .line 78
    sget-object v2, Lcom/stripe/android/ApiVersion;->Companion:Lcom/stripe/android/ApiVersion$Companion;

    invoke-virtual {v2}, Lcom/stripe/android/ApiVersion$Companion;->get$stripe_release()Lcom/stripe/android/ApiVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/android/ApiVersion;->getCode$stripe_release()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_79

    :cond_77
    move-object/from16 v11, p10

    :goto_79
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_81

    const-string v0, "AndroidBindings/16.1.1"

    move-object v12, v0

    goto :goto_83

    :cond_81
    move-object/from16 v12, p11

    :goto_83
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    .line 79
    invoke-direct/range {v0 .. v11}, Lcom/stripe/android/networking/StripeApiRepository;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/AppInfo;Lcom/stripe/android/Logger;Lcom/stripe/android/networking/ApiRequestExecutor;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/FingerprintDataRepository;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/networking/FingerprintParamsUtils;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$fireAnalyticsRequest(Lcom/stripe/android/networking/StripeApiRepository;Lcom/stripe/android/AnalyticsEvent;Lcom/stripe/android/networking/RequestId;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/networking/StripeApiRepository;->fireAnalyticsRequest(Lcom/stripe/android/AnalyticsEvent;Lcom/stripe/android/networking/RequestId;)V

    return-void
.end method

.method public static final synthetic access$getAnalyticsDataFactory$p(Lcom/stripe/android/networking/StripeApiRepository;)Lcom/stripe/android/networking/AnalyticsDataFactory;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/stripe/android/networking/StripeApiRepository;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    return-object p0
.end method

.method private final createClientSecretParam(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "client_secret"

    .line 1139
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 1140
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-static {v0, p2}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$createExpandParam(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final disableDnsCache()Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData;
    .registers 4

    const-string v0, "networkaddress.cache.ttl"

    .line 1089
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/stripe/android/networking/StripeApiRepository;

    .line 1090
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 1092
    invoke-static {v0, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    new-instance v0, Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData$Success;

    invoke-direct {v0, v1}, Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData$Success;-><init>(Ljava/lang/String;)V

    .line 1089
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_25

    :catch_1a
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1095
    :goto_25
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData$Failure;->INSTANCE:Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData$Failure;

    .line 1094
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object v0, v1

    :cond_2e
    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData;

    return-object v0
.end method

.method private final fireAnalyticsRequest(Lcom/stripe/android/AnalyticsEvent;Lcom/stripe/android/networking/RequestId;)V
    .registers 12

    .line 1119
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->analyticsDataFactory:Lcom/stripe/android/networking/AnalyticsDataFactory;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createParams$stripe_release$default(Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/AnalyticsEvent;Lcom/stripe/android/networking/RequestId;Ljava/util/Set;Ljava/lang/String;Lcom/stripe/android/model/Token$Type;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 1118
    invoke-virtual {p0, p1}, Lcom/stripe/android/networking/StripeApiRepository;->fireAnalyticsRequest$stripe_release(Ljava/util/Map;)V

    return-void
.end method

.method private final fireFingerprintRequest()V
    .registers 2

    .line 1111
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->fingerprintDataRepository:Lcom/stripe/android/FingerprintDataRepository;

    invoke-interface {v0}, Lcom/stripe/android/FingerprintDataRepository;->refresh()V

    return-void
.end method

.method private final getFingerprintData()Lcom/stripe/android/FingerprintData;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->fingerprintDataRepository:Lcom/stripe/android/FingerprintDataRepository;

    invoke-interface {v0}, Lcom/stripe/android/FingerprintDataRepository;->get()Lcom/stripe/android/FingerprintData;

    move-result-object v0

    return-object v0
.end method

.method private final handleApiError(Lcom/stripe/android/networking/StripeResponse;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .line 983
    invoke-virtual {p1}, Lcom/stripe/android/networking/StripeResponse;->getRequestId$stripe_release()Lcom/stripe/android/networking/RequestId;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/stripe/android/networking/RequestId;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 984
    invoke-virtual {p1}, Lcom/stripe/android/networking/StripeResponse;->getCode$stripe_release()I

    move-result v4

    .line 985
    new-instance v0, Lcom/stripe/android/model/StripeErrorJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/StripeErrorJsonParser;-><init>()V

    invoke-virtual {p1}, Lcom/stripe/android/networking/StripeResponse;->getResponseJson$stripe_release()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/StripeErrorJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/StripeError;

    move-result-object v2

    const/16 p1, 0x1ad

    if-eq v4, p1, :cond_59

    packed-switch v4, :pswitch_data_68

    .line 1007
    new-instance p1, Lcom/stripe/android/exception/APIException;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/stripe/android/exception/APIException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1001
    :pswitch_33
    new-instance p1, Lcom/stripe/android/exception/PermissionException;

    invoke-direct {p1, v2, v3}, Lcom/stripe/android/exception/PermissionException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 998
    :pswitch_3b
    new-instance p1, Lcom/stripe/android/exception/CardException;

    invoke-direct {p1, v2, v3}, Lcom/stripe/android/exception/CardException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 995
    :pswitch_43
    new-instance p1, Lcom/stripe/android/exception/AuthenticationException;

    invoke-direct {p1, v2, v3}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 988
    :pswitch_4b
    new-instance p1, Lcom/stripe/android/exception/InvalidRequestException;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1004
    :cond_59
    new-instance p1, Lcom/stripe/android/exception/RateLimitException;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/exception/RateLimitException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_68
    .packed-switch 0x190
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_4b
    .end packed-switch
.end method

.method private final resetDnsCache(Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData;)V
    .registers 3

    .line 1100
    instance-of v0, p1, Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData$Success;

    if-eqz v0, :cond_14

    .line 1105
    check-cast p1, Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData$Success;

    invoke-virtual {p1}, Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData$Success;->getOriginalDnsCacheTtl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const-string p1, "-1"

    :goto_f
    const-string v0, "networkaddress.cache.ttl"

    .line 1103
    invoke-static {v0, p1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public addCustomerSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Source;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 499
    iget-object p2, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 500
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getAddCustomerSourceUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "source"

    .line 502
    invoke-static {v0, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-static {p4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p4

    .line 499
    invoke-virtual {p2, p1, p6, p4}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 504
    new-instance p2, Lcom/stripe/android/model/parsers/SourceJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SourceJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 505
    new-instance p4, Lcom/stripe/android/networking/StripeApiRepository$addCustomerSource$2;

    invoke-direct {p4, p0, p3, p5}, Lcom/stripe/android/networking/StripeApiRepository$addCustomerSource$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/util/Set;Ljava/lang/String;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 498
    invoke-virtual {p0, p1, p2, p4, p7}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public attachPaymentMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 566
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    .line 569
    iget-object p2, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 570
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v0, p4}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getAttachPaymentMethodUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "customer"

    .line 572
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 569
    invoke-virtual {p2, p4, p5, p1}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 574
    new-instance p2, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 575
    new-instance p4, Lcom/stripe/android/networking/StripeApiRepository$attachPaymentMethod$2;

    invoke-direct {p4, p0, p3}, Lcom/stripe/android/networking/StripeApiRepository$attachPaymentMethod$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/util/Set;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 568
    invoke-virtual {p0, p1, p2, p4, p6}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public cancelPaymentIntentSource(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/PaymentIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 195
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    .line 198
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 199
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getCancelPaymentIntentSourceUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "source"

    .line 201
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 198
    invoke-virtual {v0, p1, p3, p2}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 203
    new-instance p2, Lcom/stripe/android/model/parsers/PaymentIntentJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/PaymentIntentJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 204
    new-instance p3, Lcom/stripe/android/networking/StripeApiRepository$cancelPaymentIntentSource$2;

    invoke-direct {p3, p0}, Lcom/stripe/android/networking/StripeApiRepository$cancelPaymentIntentSource$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 197
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public cancelSetupIntentSource(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/SetupIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 314
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getCancelSetupIntentSourceUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "source"

    .line 316
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 313
    invoke-virtual {v0, p1, p3, p2}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 318
    new-instance p2, Lcom/stripe/android/model/parsers/SetupIntentJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SetupIntentJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 319
    new-instance p3, Lcom/stripe/android/networking/StripeApiRepository$cancelSetupIntentSource$2;

    invoke-direct {p3, p0}, Lcom/stripe/android/networking/StripeApiRepository$cancelSetupIntentSource$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 312
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public complete3ds2Auth(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Stripe3ds2AuthResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 909
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 910
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const-string v2, "3ds2/challenge_complete"

    invoke-static {v1, v2}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$getApiUrl(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    .line 912
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 909
    invoke-virtual {v0, v1, p2, p1}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 914
    new-instance p2, Lcom/stripe/android/model/parsers/Stripe3ds2AuthResultJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/Stripe3ds2AuthResultJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 915
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository$complete3ds2Auth$2;->INSTANCE:Lcom/stripe/android/networking/StripeApiRepository$complete3ds2Auth$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 908
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public confirmPaymentIntent(Lcom/stripe/android/model/ConfirmPaymentIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Lcom/stripe/android/model/ConfirmPaymentIntentParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/ConfirmPaymentIntentParams;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/PaymentIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->fingerprintParamsUtils:Lcom/stripe/android/networking/FingerprintParamsUtils;

    .line 116
    invoke-virtual {p1}, Lcom/stripe/android/model/ConfirmPaymentIntentParams;->toParamMap()Ljava/util/Map;

    move-result-object v1

    .line 117
    sget-object v2, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-static {v2, p3}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$createExpandParam(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/util/List;)Ljava/util/Map;

    move-result-object p3

    invoke-static {v1, p3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 118
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->getFingerprintData()Lcom/stripe/android/FingerprintData;

    move-result-object v1

    .line 115
    invoke-virtual {v0, p3, v1}, Lcom/stripe/android/networking/FingerprintParamsUtils;->addFingerprintData$stripe_release(Ljava/util/Map;Lcom/stripe/android/FingerprintData;)Ljava/util/Map;

    move-result-object p3

    .line 120
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    .line 121
    new-instance v1, Lcom/stripe/android/model/PaymentIntent$ClientSecret;

    invoke-virtual {p1}, Lcom/stripe/android/model/ConfirmPaymentIntentParams;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/android/model/PaymentIntent$ClientSecret;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/stripe/android/model/PaymentIntent$ClientSecret;->getPaymentIntentId$stripe_release()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getConfirmPaymentIntentUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    .line 127
    iget-object v1, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    invoke-virtual {v1, v0, p2, p3}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p2

    .line 128
    new-instance p3, Lcom/stripe/android/model/parsers/PaymentIntentJsonParser;

    invoke-direct {p3}, Lcom/stripe/android/model/parsers/PaymentIntentJsonParser;-><init>()V

    check-cast p3, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 129
    new-instance v0, Lcom/stripe/android/networking/StripeApiRepository$confirmPaymentIntent$2;

    invoke-direct {v0, p0, p1}, Lcom/stripe/android/networking/StripeApiRepository$confirmPaymentIntent$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Lcom/stripe/android/model/ConfirmPaymentIntentParams;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 126
    invoke-virtual {p0, p2, p3, v0, p4}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public confirmSetupIntent(Lcom/stripe/android/model/ConfirmSetupIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .param p1    # Lcom/stripe/android/model/ConfirmSetupIntentParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/ConfirmSetupIntentParams;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/SetupIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 233
    new-instance v0, Lcom/stripe/android/model/SetupIntent$ClientSecret;

    invoke-virtual {p1}, Lcom/stripe/android/model/ConfirmSetupIntentParams;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/stripe/android/model/SetupIntent$ClientSecret;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/android/model/SetupIntent$ClientSecret;->getSetupIntentId$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    .line 238
    iget-object v1, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 239
    sget-object v2, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v2, v0}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getConfirmSetupIntentUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    iget-object v3, p0, Lcom/stripe/android/networking/StripeApiRepository;->fingerprintParamsUtils:Lcom/stripe/android/networking/FingerprintParamsUtils;

    .line 242
    invoke-virtual {p1}, Lcom/stripe/android/model/ConfirmSetupIntentParams;->toParamMap()Ljava/util/Map;

    move-result-object v4

    .line 243
    sget-object v5, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-static {v5, p3}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$createExpandParam(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/util/List;)Ljava/util/Map;

    move-result-object p3

    invoke-static {v4, p3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 244
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->getFingerprintData()Lcom/stripe/android/FingerprintData;

    move-result-object v4

    .line 241
    invoke-virtual {v3, p3, v4}, Lcom/stripe/android/networking/FingerprintParamsUtils;->addFingerprintData$stripe_release(Ljava/util/Map;Lcom/stripe/android/FingerprintData;)Ljava/util/Map;

    move-result-object p3

    .line 238
    invoke-virtual {v1, v2, p2, p3}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p2

    .line 247
    new-instance p3, Lcom/stripe/android/model/parsers/SetupIntentJsonParser;

    invoke-direct {p3}, Lcom/stripe/android/model/parsers/SetupIntentJsonParser;-><init>()V

    check-cast p3, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 248
    new-instance v1, Lcom/stripe/android/networking/StripeApiRepository$confirmSetupIntent$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/stripe/android/networking/StripeApiRepository$confirmSetupIntent$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Lcom/stripe/android/model/ConfirmSetupIntentParams;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 237
    invoke-virtual {p0, p2, p3, v1, p4}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createFile(Lcom/stripe/android/model/StripeFileParams;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .param p1    # Lcom/stripe/android/model/StripeFileParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/StripeFileParams;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/StripeFile;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 928
    new-instance p3, Lcom/stripe/android/networking/FileUploadRequest;

    iget-object v3, p0, Lcom/stripe/android/networking/StripeApiRepository;->appInfo:Lcom/stripe/android/AppInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/stripe/android/networking/FileUploadRequest;-><init>(Lcom/stripe/android/model/StripeFileParams;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/AppInfo;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 929
    new-instance p1, Lcom/stripe/android/networking/StripeApiRepository$createFile$response$1;

    invoke-direct {p1, p0}, Lcom/stripe/android/networking/StripeApiRepository$createFile$response$1;-><init>(Lcom/stripe/android/networking/StripeApiRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 927
    invoke-virtual {p0, p3, p1}, Lcom/stripe/android/networking/StripeApiRepository;->makeFileUploadRequest$stripe_release(Lcom/stripe/android/networking/FileUploadRequest;Lkotlin/jvm/functions/Function1;)Lcom/stripe/android/networking/StripeResponse;

    move-result-object p1

    .line 935
    new-instance p2, Lcom/stripe/android/model/parsers/StripeFileJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/StripeFileJsonParser;-><init>()V

    invoke-virtual {p1}, Lcom/stripe/android/networking/StripeResponse;->getResponseJson$stripe_release()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stripe/android/model/parsers/StripeFileJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/StripeFile;

    move-result-object p1

    return-object p1
.end method

.method public createPaymentMethod(Lcom/stripe/android/model/PaymentMethodCreateParams;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Lcom/stripe/android/model/PaymentMethodCreateParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/PaymentMethodCreateParams;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 416
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    .line 419
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 420
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getPaymentMethodsUrl$stripe_release()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentMethodCreateParams;->toParamMap()Ljava/util/Map;

    move-result-object v2

    .line 423
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->getFingerprintData()Lcom/stripe/android/FingerprintData;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/stripe/android/FingerprintData;->getParams()Ljava/util/Map;

    move-result-object v3

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    if-eqz v3, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :goto_22
    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 419
    invoke-virtual {v0, v1, p2, v2}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p2

    .line 425
    new-instance v0, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;-><init>()V

    check-cast v0, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 426
    new-instance v1, Lcom/stripe/android/networking/StripeApiRepository$createPaymentMethod$2;

    invoke-direct {v1, p0, p1}, Lcom/stripe/android/networking/StripeApiRepository$createPaymentMethod$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Lcom/stripe/android/model/PaymentMethodCreateParams;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 418
    invoke-virtual {p0, p2, v0, v1, p3}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createSource(Lcom/stripe/android/model/SourceParams;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Lcom/stripe/android/model/SourceParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/SourceParams;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Source;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 346
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    .line 349
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 350
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getSourcesUrl$stripe_release()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {p1}, Lcom/stripe/android/model/SourceParams;->toParamMap()Ljava/util/Map;

    move-result-object v2

    .line 353
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->getFingerprintData()Lcom/stripe/android/FingerprintData;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/stripe/android/FingerprintData;->getParams()Ljava/util/Map;

    move-result-object v3

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    if-eqz v3, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :goto_22
    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 349
    invoke-virtual {v0, v1, p2, v2}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p2

    .line 355
    new-instance v0, Lcom/stripe/android/model/parsers/SourceJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/SourceJsonParser;-><init>()V

    check-cast v0, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 356
    new-instance v1, Lcom/stripe/android/networking/StripeApiRepository$createSource$2;

    invoke-direct {v1, p0, p1}, Lcom/stripe/android/networking/StripeApiRepository$createSource$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Lcom/stripe/android/model/SourceParams;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 348
    invoke-virtual {p0, p2, v0, v1, p3}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createToken(Lcom/stripe/android/model/TokenParams;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Lcom/stripe/android/model/TokenParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/TokenParams;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Token;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 459
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    .line 462
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 463
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getTokensUrl$stripe_release()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p1}, Lcom/stripe/android/model/TokenParams;->toParamMap()Ljava/util/Map;

    move-result-object v2

    .line 466
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->getFingerprintData()Lcom/stripe/android/FingerprintData;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/stripe/android/FingerprintData;->getParams()Ljava/util/Map;

    move-result-object v3

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    if-eqz v3, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :goto_22
    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 462
    invoke-virtual {v0, v1, p2, v2}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p2

    .line 468
    new-instance v0, Lcom/stripe/android/model/parsers/TokenJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/TokenJsonParser;-><init>()V

    check-cast v0, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 469
    new-instance v1, Lcom/stripe/android/networking/StripeApiRepository$createToken$2;

    invoke-direct {v1, p0, p1}, Lcom/stripe/android/networking/StripeApiRepository$createToken$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Lcom/stripe/android/model/TokenParams;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 461
    invoke-virtual {p0, p2, v0, v1, p3}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteCustomerSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Source;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 534
    iget-object p2, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 535
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v0, p1, p4}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getDeleteCustomerSourceUrl$stripe_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-virtual {p2, p1, p5}, Lcom/stripe/android/networking/ApiRequest$Factory;->createDelete(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 538
    new-instance p2, Lcom/stripe/android/model/parsers/SourceJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SourceJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 539
    new-instance p4, Lcom/stripe/android/networking/StripeApiRepository$deleteCustomerSource$2;

    invoke-direct {p4, p0, p3}, Lcom/stripe/android/networking/StripeApiRepository$deleteCustomerSource$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/util/Set;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 533
    invoke-virtual {p0, p1, p2, p4, p6}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public detachPaymentMethod(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 604
    invoke-virtual {p0, p3}, Lcom/stripe/android/networking/StripeApiRepository;->getDetachPaymentMethodUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p4

    .line 603
    invoke-static/range {v0 .. v5}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost$default(Lcom/stripe/android/networking/ApiRequest$Factory;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 607
    new-instance p3, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;

    invoke-direct {p3}, Lcom/stripe/android/model/parsers/PaymentMethodJsonParser;-><init>()V

    check-cast p3, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 608
    new-instance p4, Lcom/stripe/android/networking/StripeApiRepository$detachPaymentMethod$2;

    invoke-direct {p4, p0, p2}, Lcom/stripe/android/networking/StripeApiRepository$detachPaymentMethod$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/util/Set;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 602
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ModelType::",
            "Lcom/stripe/android/model/StripeModel;",
            ">(",
            "Lcom/stripe/android/networking/ApiRequest;",
            "Lcom/stripe/android/model/parsers/ModelJsonParser<",
            "+TModelType;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/networking/RequestId;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TModelType;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1017
    invoke-virtual {p0, p1, p3}, Lcom/stripe/android/networking/StripeApiRepository;->makeApiRequest$stripe_release(Lcom/stripe/android/networking/ApiRequest;Lkotlin/jvm/functions/Function1;)Lcom/stripe/android/networking/StripeResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/android/networking/StripeResponse;->getResponseJson$stripe_release()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/stripe/android/model/parsers/ModelJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/StripeModel;

    move-result-object p1

    return-object p1
.end method

.method public final fireAnalyticsRequest$stripe_release(Ljava/util/Map;)V
    .registers 4
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->analyticsRequestExecutor:Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    .line 1131
    iget-object v1, p0, Lcom/stripe/android/networking/StripeApiRepository;->analyticsRequestFactory:Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object p1

    .line 1130
    invoke-interface {v0, p1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    return-void
.end method

.method public getCardMetadata(Lcom/stripe/android/cards/Bin;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .param p1    # Lcom/stripe/android/cards/Bin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/cards/Bin;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/CardMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p3, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;

    if-eqz v0, :cond_14

    move-object v0, p3

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;

    iget v1, v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p3, v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;

    invoke-direct {v0, p0, p3}, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p3, v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 854
    iget v2, v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p1, v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/android/networking/StripeApiRepository;

    :try_start_2a
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_8f

    :catch_2e
    move-exception p2

    goto :goto_98

    .line 858
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 854
    :cond_38
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 858
    :try_start_3b
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p3, p0

    check-cast p3, Lcom/stripe/android/networking/StripeApiRepository;

    .line 860
    iget-object v2, p3, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 861
    sget-object v4, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const-string v5, "card-metadata"

    invoke-static {v4, v5}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$getEdgeUrl(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    move-object v5, p2

    .line 862
    invoke-static/range {v5 .. v10}, Lcom/stripe/android/networking/ApiRequest$Options;->copy$default(Lcom/stripe/android/networking/ApiRequest$Options;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/networking/ApiRequest$Options;

    move-result-object v5

    const/4 v6, 0x2

    .line 863
    new-array v6, v6, [Lkotlin/Pair;

    const/4 v7, 0x0

    const-string v8, "key"

    invoke-virtual {p2}, Lcom/stripe/android/networking/ApiRequest$Options;->getApiKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v6, v7

    const-string p2, "bin_prefix"

    invoke-virtual {p1}, Lcom/stripe/android/cards/Bin;->getValue$stripe_release()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v6, v3

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 860
    invoke-virtual {v2, v4, v5, p2}, Lcom/stripe/android/networking/ApiRequest$Factory;->createGet(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p2

    .line 865
    new-instance v2, Lcom/stripe/android/model/parsers/CardMetadataJsonParser;

    invoke-direct {v2, p1}, Lcom/stripe/android/model/parsers/CardMetadataJsonParser;-><init>(Lcom/stripe/android/cards/Bin;)V

    check-cast v2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 866
    sget-object p1, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$2$1;->INSTANCE:Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$2$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p0, v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/android/networking/StripeApiRepository$getCardMetadata$1;->label:I

    .line 859
    invoke-virtual {p3, p2, v2, p1, v0}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_8b} :catch_96

    if-ne p3, v1, :cond_8e

    return-object v1

    :cond_8e
    move-object p1, p0

    .line 866
    :goto_8f
    :try_start_8f
    check-cast p3, Lcom/stripe/android/model/CardMetadata;

    .line 858
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_95} :catch_2e

    goto :goto_a2

    :catch_96
    move-exception p2

    move-object p1, p0

    :goto_98
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 869
    :goto_a2
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_ae

    .line 871
    sget-object p3, Lcom/stripe/android/AnalyticsEvent;->CardMetadataLoadFailure:Lcom/stripe/android/AnalyticsEvent;

    .line 870
    invoke-direct {p1, p3, v0}, Lcom/stripe/android/networking/StripeApiRepository;->fireAnalyticsRequest(Lcom/stripe/android/AnalyticsEvent;Lcom/stripe/android/networking/RequestId;)V

    .line 874
    :cond_ae
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b5

    move-object p2, v0

    :cond_b5
    return-object p2
.end method

.method public final getDetachPaymentMethodUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paymentMethodId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "payment_methods/%s/detach"

    invoke-static {v0, p1, v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$getApiUrl(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFpxBankStatus(Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .param p1    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/FpxBankStatuses;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;

    iget v1, v0, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p2, v0, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 829
    iget v2, v0, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_32

    if-ne v2, v3, :cond_2a

    :try_start_26
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_8c

    goto :goto_75

    .line 832
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 829
    :cond_32
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 832
    :try_start_35
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/stripe/android/networking/StripeApiRepository;

    .line 834
    iget-object v2, p2, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 835
    sget-object v4, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const-string v5, "fpx/bank_statuses"

    invoke-static {v4, v5}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$getApiUrl(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    move-object v5, p1

    .line 838
    invoke-static/range {v5 .. v10}, Lcom/stripe/android/networking/ApiRequest$Options;->copy$default(Lcom/stripe/android/networking/ApiRequest$Options;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/networking/ApiRequest$Options;

    move-result-object p1

    const-string v5, "account_holder_type"

    const-string v6, "individual"

    .line 840
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 834
    invoke-virtual {v2, v4, p1, v5}, Lcom/stripe/android/networking/ApiRequest$Factory;->createGet(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 842
    new-instance v2, Lcom/stripe/android/model/parsers/FpxBankStatusesJsonParser;

    invoke-direct {v2}, Lcom/stripe/android/model/parsers/FpxBankStatusesJsonParser;-><init>()V

    check-cast v2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 843
    new-instance v4, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$2$fpxBankStatuses$1;

    invoke-direct {v4, p2}, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$2$fpxBankStatuses$1;-><init>(Lcom/stripe/android/networking/StripeApiRepository;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iput v3, v0, Lcom/stripe/android/networking/StripeApiRepository$getFpxBankStatus$1;->label:I

    .line 833
    invoke-virtual {p2, p1, v2, v4, v0}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_75

    return-object v1

    .line 829
    :cond_75
    :goto_75
    check-cast p2, Lcom/stripe/android/model/FpxBankStatuses;

    if-eqz p2, :cond_7e

    .line 832
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_97

    :cond_7e
    const-string p1, "Required value was null."

    .line 850
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_8c} :catch_8c

    :catch_8c
    move-exception p1

    .line 832
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 851
    :goto_97
    new-instance p2, Lcom/stripe/android/model/FpxBankStatuses;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v3, v0}, Lcom/stripe/android/model/FpxBankStatuses;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    move-object p1, p2

    :cond_a4
    return-object p1
.end method

.method public getPaymentMethods(Lcom/stripe/android/model/ListPaymentMethodsParams;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .param p1    # Lcom/stripe/android/model/ListPaymentMethodsParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/ListPaymentMethodsParams;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of p2, p5, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;

    if-eqz p2, :cond_14

    move-object p2, p5

    check-cast p2, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;

    iget v0, p2, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    iget p5, p2, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;->label:I

    sub-int/2addr p5, v1

    iput p5, p2, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;->label:I

    goto :goto_19

    :cond_14
    new-instance p2, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;

    invoke-direct {p2, p0, p5}, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p5, p2, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 631
    iget v1, p2, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    if-ne v1, v2, :cond_2a

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    .line 654
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 631
    :cond_32
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 638
    iget-object p5, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 639
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getPaymentMethodsUrl$stripe_release()Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-virtual {p1}, Lcom/stripe/android/model/ListPaymentMethodsParams;->toParamMap()Ljava/util/Map;

    move-result-object p1

    .line 638
    invoke-virtual {p5, v1, p4, p1}, Lcom/stripe/android/networking/ApiRequest$Factory;->createGet(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 643
    new-instance p4, Lcom/stripe/android/model/parsers/PaymentMethodsListJsonParser;

    invoke-direct {p4}, Lcom/stripe/android/model/parsers/PaymentMethodsListJsonParser;-><init>()V

    check-cast p4, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 644
    new-instance p5, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$paymentMethodsList$1;

    invoke-direct {p5, p0, p3}, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$paymentMethodsList$1;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/util/Set;)V

    check-cast p5, Lkotlin/jvm/functions/Function1;

    iput v2, p2, Lcom/stripe/android/networking/StripeApiRepository$getPaymentMethods$1;->label:I

    .line 637
    invoke-virtual {p0, p1, p4, p5, p2}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_5c

    return-object v0

    .line 631
    :cond_5c
    :goto_5c
    check-cast p5, Lcom/stripe/android/model/PaymentMethodsList;

    if-eqz p5, :cond_65

    .line 654
    invoke-virtual {p5}, Lcom/stripe/android/model/PaymentMethodsList;->getPaymentMethods()Ljava/util/List;

    move-result-object p1

    goto :goto_66

    :cond_65
    const/4 p1, 0x0

    :goto_66
    if-eqz p1, :cond_69

    goto :goto_6d

    :cond_69
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_6d
    return-object p1
.end method

.method public final makeApiRequest$stripe_release(Lcom/stripe/android/networking/ApiRequest;Lkotlin/jvm/functions/Function1;)Lcom/stripe/android/networking/StripeResponse;
    .registers 7
    .param p1    # Lcom/stripe/android/networking/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/ApiRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/networking/RequestId;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/android/networking/StripeResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "apiRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->disableDnsCache()Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData;

    move-result-object v0

    .line 1034
    :try_start_e
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/stripe/android/networking/StripeApiRepository;

    .line 1035
    iget-object v1, v1, Lcom/stripe/android/networking/StripeApiRepository;->stripeApiRequestExecutor:Lcom/stripe/android/networking/ApiRequestExecutor;

    invoke-interface {v1, p1}, Lcom/stripe/android/networking/ApiRequestExecutor;->execute(Lcom/stripe/android/networking/ApiRequest;)Lcom/stripe/android/networking/StripeResponse;

    move-result-object v1

    .line 1034
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1037
    :goto_29
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    move-object v2, v3

    goto :goto_33

    :cond_32
    move-object v2, v1

    :goto_33
    check-cast v2, Lcom/stripe/android/networking/StripeResponse;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/stripe/android/networking/StripeResponse;->getRequestId$stripe_release()Lcom/stripe/android/networking/RequestId;

    move-result-object v3

    :cond_3b
    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_53

    .line 1034
    check-cast v1, Lcom/stripe/android/networking/StripeResponse;

    .line 1045
    invoke-virtual {v1}, Lcom/stripe/android/networking/StripeResponse;->isError$stripe_release()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1046
    invoke-direct {p0, v1}, Lcom/stripe/android/networking/StripeApiRepository;->handleApiError(Lcom/stripe/android/networking/StripeResponse;)V

    .line 1049
    :cond_4f
    invoke-direct {p0, v0}, Lcom/stripe/android/networking/StripeApiRepository;->resetDnsCache(Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData;)V

    return-object v1

    .line 1040
    :cond_53
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_66

    sget-object v0, Lcom/stripe/android/exception/APIConnectionException;->Companion:Lcom/stripe/android/exception/APIConnectionException$Companion;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/stripe/android/networking/ApiRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/stripe/android/exception/APIConnectionException$Companion;->create$stripe_release(Ljava/io/IOException;Ljava/lang/String;)Lcom/stripe/android/exception/APIConnectionException;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Throwable;

    .line 1039
    :cond_66
    throw p2
.end method

.method public final makeFileUploadRequest$stripe_release(Lcom/stripe/android/networking/FileUploadRequest;Lkotlin/jvm/functions/Function1;)Lcom/stripe/android/networking/StripeResponse;
    .registers 7
    .param p1    # Lcom/stripe/android/networking/FileUploadRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/FileUploadRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/networking/RequestId;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/android/networking/StripeResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileUploadRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->disableDnsCache()Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData;

    move-result-object v0

    .line 1068
    :try_start_e
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/stripe/android/networking/StripeApiRepository;

    .line 1069
    iget-object v1, v1, Lcom/stripe/android/networking/StripeApiRepository;->stripeApiRequestExecutor:Lcom/stripe/android/networking/ApiRequestExecutor;

    invoke-interface {v1, p1}, Lcom/stripe/android/networking/ApiRequestExecutor;->execute(Lcom/stripe/android/networking/FileUploadRequest;)Lcom/stripe/android/networking/StripeResponse;

    move-result-object v1

    .line 1068
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1071
    :goto_29
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    move-object v2, v3

    goto :goto_33

    :cond_32
    move-object v2, v1

    :goto_33
    check-cast v2, Lcom/stripe/android/networking/StripeResponse;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/stripe/android/networking/StripeResponse;->getRequestId$stripe_release()Lcom/stripe/android/networking/RequestId;

    move-result-object v3

    :cond_3b
    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_53

    .line 1068
    check-cast v1, Lcom/stripe/android/networking/StripeResponse;

    .line 1079
    invoke-virtual {v1}, Lcom/stripe/android/networking/StripeResponse;->isError$stripe_release()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1080
    invoke-direct {p0, v1}, Lcom/stripe/android/networking/StripeApiRepository;->handleApiError(Lcom/stripe/android/networking/StripeResponse;)V

    .line 1083
    :cond_4f
    invoke-direct {p0, v0}, Lcom/stripe/android/networking/StripeApiRepository;->resetDnsCache(Lcom/stripe/android/networking/StripeApiRepository$DnsCacheData;)V

    return-object v1

    .line 1074
    :cond_53
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_66

    sget-object v0, Lcom/stripe/android/exception/APIConnectionException;->Companion:Lcom/stripe/android/exception/APIConnectionException$Companion;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/stripe/android/networking/FileUploadRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/stripe/android/exception/APIConnectionException$Companion;->create$stripe_release(Ljava/io/IOException;Ljava/lang/String;)Lcom/stripe/android/exception/APIConnectionException;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Throwable;

    .line 1073
    :cond_66
    throw p2
.end method

.method public retrieveCustomer(Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Customer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 746
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getRetrieveCustomerUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p3

    .line 745
    invoke-static/range {v0 .. v5}, Lcom/stripe/android/networking/ApiRequest$Factory;->createGet$default(Lcom/stripe/android/networking/ApiRequest$Factory;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 749
    new-instance p3, Lcom/stripe/android/model/parsers/CustomerJsonParser;

    invoke-direct {p3}, Lcom/stripe/android/model/parsers/CustomerJsonParser;-><init>()V

    check-cast p3, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 750
    new-instance v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveCustomer$2;

    invoke-direct {v0, p0, p2}, Lcom/stripe/android/networking/StripeApiRepository$retrieveCustomer$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/util/Set;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 744
    invoke-virtual {p0, p1, p3, v0, p4}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retrieveIssuingCardPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p5, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;

    if-eqz v0, :cond_14

    move-object v0, p5

    check-cast v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;

    iget v1, v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p5, v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;

    invoke-direct {v0, p0, p5}, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p5, v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 772
    iget v2, v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_32

    if-ne v2, v3, :cond_2a

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    .line 792
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 772
    :cond_32
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 779
    iget-object p5, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 780
    sget-object v2, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v2, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getIssuingCardPinUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 781
    new-instance v2, Lcom/stripe/android/networking/ApiRequest$Options;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p4

    invoke-direct/range {v4 .. v9}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 782
    sget-object p4, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-static {p4, p2, p3}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$createVerificationParam(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "verification"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 779
    invoke-virtual {p5, p1, v2, p2}, Lcom/stripe/android/networking/ApiRequest$Factory;->createGet(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 784
    new-instance p2, Lcom/stripe/android/model/parsers/IssuingCardPinJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/IssuingCardPinJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 785
    new-instance p3, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$issuingCardPin$1;

    invoke-direct {p3, p0}, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$issuingCardPin$1;-><init>(Lcom/stripe/android/networking/StripeApiRepository;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iput v3, v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveIssuingCardPin$1;->label:I

    .line 778
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_73

    return-object v1

    .line 772
    :cond_73
    :goto_73
    check-cast p5, Lcom/stripe/android/model/IssuingCardPin;

    if-eqz p5, :cond_7c

    .line 792
    invoke-virtual {p5}, Lcom/stripe/android/model/IssuingCardPin;->getPin()Ljava/lang/String;

    move-result-object p1

    goto :goto_7d

    :cond_7c
    const/4 p1, 0x0

    :goto_7d
    return-object p1
.end method

.method public retrieveObject(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/AuthenticationException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 950
    sget-object p3, Lcom/stripe/android/utils/StripeUrlUtils;->INSTANCE:Lcom/stripe/android/utils/StripeUrlUtils;

    invoke-virtual {p3, p1}, Lcom/stripe/android/utils/StripeUrlUtils;->isStripeUrl$stripe_release(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_23

    .line 954
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/stripe/android/networking/ApiRequest$Factory;->createGet$default(Lcom/stripe/android/networking/ApiRequest$Factory;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 958
    new-instance p2, Lcom/stripe/android/networking/StripeApiRepository$retrieveObject$response$1;

    invoke-direct {p2, p0}, Lcom/stripe/android/networking/StripeApiRepository$retrieveObject$response$1;-><init>(Lcom/stripe/android/networking/StripeApiRepository;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 953
    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/networking/StripeApiRepository;->makeApiRequest$stripe_release(Lcom/stripe/android/networking/ApiRequest;Lkotlin/jvm/functions/Function1;)Lcom/stripe/android/networking/StripeResponse;

    move-result-object p1

    .line 965
    invoke-virtual {p1}, Lcom/stripe/android/networking/StripeResponse;->getResponseJson$stripe_release()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 951
    :cond_23
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized domain: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public retrievePaymentIntent(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/PaymentIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 160
    new-instance v0, Lcom/stripe/android/model/PaymentIntent$ClientSecret;

    invoke-direct {v0, p1}, Lcom/stripe/android/model/PaymentIntent$ClientSecret;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/android/model/PaymentIntent$ClientSecret;->getPaymentIntentId$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    .line 165
    iget-object v1, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 166
    sget-object v2, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v2, v0}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getRetrievePaymentIntentUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-direct {p0, p1, p3}, Lcom/stripe/android/networking/StripeApiRepository;->createClientSecretParam(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 165
    invoke-virtual {v1, v2, p2, p1}, Lcom/stripe/android/networking/ApiRequest$Factory;->createGet(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 170
    new-instance p2, Lcom/stripe/android/model/parsers/PaymentIntentJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/PaymentIntentJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 171
    new-instance p3, Lcom/stripe/android/networking/StripeApiRepository$retrievePaymentIntent$2;

    invoke-direct {p3, p0, v0}, Lcom/stripe/android/networking/StripeApiRepository$retrievePaymentIntent$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/lang/String;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 164
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/SetupIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 277
    new-instance v0, Lcom/stripe/android/model/SetupIntent$ClientSecret;

    invoke-direct {v0, p1}, Lcom/stripe/android/model/SetupIntent$ClientSecret;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/android/model/SetupIntent$ClientSecret;->getSetupIntentId$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-direct {p0}, Lcom/stripe/android/networking/StripeApiRepository;->fireFingerprintRequest()V

    .line 282
    iget-object v1, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 283
    sget-object v2, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v2, v0}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getRetrieveSetupIntentUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-direct {p0, p1, p3}, Lcom/stripe/android/networking/StripeApiRepository;->createClientSecretParam(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 282
    invoke-virtual {v1, v2, p2, p1}, Lcom/stripe/android/networking/ApiRequest$Factory;->createGet(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 287
    new-instance p2, Lcom/stripe/android/model/parsers/SetupIntentJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/SetupIntentJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 288
    new-instance p3, Lcom/stripe/android/networking/StripeApiRepository$retrieveSetupIntent$2;

    invoke-direct {p3, p0, v0}, Lcom/stripe/android/networking/StripeApiRepository$retrieveSetupIntent$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/lang/String;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 281
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retrieveSource(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Source;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 388
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getRetrieveSourceApiUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    sget-object v2, Lcom/stripe/android/model/SourceParams;->Companion:Lcom/stripe/android/model/SourceParams$Companion;

    invoke-virtual {v2, p2}, Lcom/stripe/android/model/SourceParams$Companion;->createRetrieveSourceParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 387
    invoke-virtual {v0, v1, p3, p2}, Lcom/stripe/android/networking/ApiRequest$Factory;->createGet(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p2

    .line 392
    new-instance p3, Lcom/stripe/android/model/parsers/SourceJsonParser;

    invoke-direct {p3}, Lcom/stripe/android/model/parsers/SourceJsonParser;-><init>()V

    check-cast p3, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 393
    new-instance v0, Lcom/stripe/android/networking/StripeApiRepository$retrieveSource$2;

    invoke-direct {v0, p0, p1}, Lcom/stripe/android/networking/StripeApiRepository$retrieveSource$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 386
    invoke-virtual {p0, p2, p3, v0, p4}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setCustomerShippingInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/android/model/ShippingInformation;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Customer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 712
    iget-object p2, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 713
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getRetrieveCustomerUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 715
    invoke-virtual {p4}, Lcom/stripe/android/model/ShippingInformation;->toParamMap()Ljava/util/Map;

    move-result-object p4

    const-string v0, "shipping"

    invoke-static {v0, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-static {p4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p4

    .line 712
    invoke-virtual {p2, p1, p5, p4}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 717
    new-instance p2, Lcom/stripe/android/model/parsers/CustomerJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/CustomerJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 718
    new-instance p4, Lcom/stripe/android/networking/StripeApiRepository$setCustomerShippingInfo$2;

    invoke-direct {p4, p0, p3}, Lcom/stripe/android/networking/StripeApiRepository$setCustomerShippingInfo$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/util/Set;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 711
    invoke-virtual {p0, p1, p2, p4, p6}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultCustomerSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Customer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 676
    iget-object p2, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 677
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getRetrieveCustomerUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "default_source"

    .line 679
    invoke-static {v0, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-static {p4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p4

    .line 676
    invoke-virtual {p2, p1, p6, p4}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 681
    new-instance p2, Lcom/stripe/android/model/parsers/CustomerJsonParser;

    invoke-direct {p2}, Lcom/stripe/android/model/parsers/CustomerJsonParser;-><init>()V

    check-cast p2, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 682
    new-instance p4, Lcom/stripe/android/networking/StripeApiRepository$setDefaultCustomerSource$2;

    invoke-direct {p4, p0, p3, p5}, Lcom/stripe/android/networking/StripeApiRepository$setDefaultCustomerSource$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/util/Set;Ljava/lang/String;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 675
    invoke-virtual {p0, p1, p2, p4, p7}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public start3ds2Auth(Lcom/stripe/android/model/Stripe3ds2AuthParams;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1    # Lcom/stripe/android/model/Stripe3ds2AuthParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/Stripe3ds2AuthParams;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/networking/ApiRequest$Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/model/Stripe3ds2AuthResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 888
    sget-object v1, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    const-string v2, "3ds2/authenticate"

    invoke-static {v1, v2}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$getApiUrl(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 890
    invoke-virtual {p1}, Lcom/stripe/android/model/Stripe3ds2AuthParams;->toParamMap()Ljava/util/Map;

    move-result-object p1

    .line 887
    invoke-virtual {v0, v1, p3, p1}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 892
    new-instance p3, Lcom/stripe/android/model/parsers/Stripe3ds2AuthResultJsonParser;

    invoke-direct {p3}, Lcom/stripe/android/model/parsers/Stripe3ds2AuthResultJsonParser;-><init>()V

    check-cast p3, Lcom/stripe/android/model/parsers/ModelJsonParser;

    .line 893
    new-instance v0, Lcom/stripe/android/networking/StripeApiRepository$start3ds2Auth$2;

    invoke-direct {v0, p0, p2}, Lcom/stripe/android/networking/StripeApiRepository$start3ds2Auth$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 886
    invoke-virtual {p0, p1, p3, v0, p4}, Lcom/stripe/android/networking/StripeApiRepository;->fetchStripeModel(Lcom/stripe/android/networking/ApiRequest;Lcom/stripe/android/model/parsers/ModelJsonParser;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateIssuingCardPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 813
    iget-object p6, p0, Lcom/stripe/android/networking/StripeApiRepository;->apiRequestFactory:Lcom/stripe/android/networking/ApiRequest$Factory;

    .line 814
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->getIssuingCardPinUrl$stripe_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 815
    new-instance v6, Lcom/stripe/android/networking/ApiRequest$Options;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p5, 0x2

    .line 816
    new-array p5, p5, [Lkotlin/Pair;

    .line 817
    sget-object v0, Lcom/stripe/android/networking/StripeApiRepository;->Companion:Lcom/stripe/android/networking/StripeApiRepository$Companion;

    invoke-static {v0, p3, p4}, Lcom/stripe/android/networking/StripeApiRepository$Companion;->access$createVerificationParam(Lcom/stripe/android/networking/StripeApiRepository$Companion;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    const-string p4, "verification"

    invoke-static {p4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p5, p4

    const-string p3, "pin"

    .line 818
    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p5, p3

    .line 816
    invoke-static {p5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 813
    invoke-virtual {p6, p1, v6, p2}, Lcom/stripe/android/networking/ApiRequest$Factory;->createPost(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/Map;)Lcom/stripe/android/networking/ApiRequest;

    move-result-object p1

    .line 821
    new-instance p2, Lcom/stripe/android/networking/StripeApiRepository$updateIssuingCardPin$2;

    invoke-direct {p2, p0}, Lcom/stripe/android/networking/StripeApiRepository$updateIssuingCardPin$2;-><init>(Lcom/stripe/android/networking/StripeApiRepository;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 812
    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/networking/StripeApiRepository;->makeApiRequest$stripe_release(Lcom/stripe/android/networking/ApiRequest;Lkotlin/jvm/functions/Function1;)Lcom/stripe/android/networking/StripeResponse;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_48

    return-object p1

    .line 827
    :cond_48
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
