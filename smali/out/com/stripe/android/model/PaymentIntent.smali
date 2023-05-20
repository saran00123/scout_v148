.class public final Lcom/stripe/android/model/PaymentIntent;
.super Ljava/lang/Object;
.source "PaymentIntent.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeIntent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/PaymentIntent$Creator;,
        Lcom/stripe/android/model/PaymentIntent$Error;,
        Lcom/stripe/android/model/PaymentIntent$Shipping;,
        Lcom/stripe/android/model/PaymentIntent$ClientSecret;,
        Lcom/stripe/android/model/PaymentIntent$CancellationReason;,
        Lcom/stripe/android/model/PaymentIntent$CaptureMethod;,
        Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;,
        Lcom/stripe/android/model/PaymentIntent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u0000 u2\u00020\u0001:\u0007rstuvwxB\u0082\u0002\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u001d\u0008\u0002\u0010\u0015\u001a\u0017\u0012\u0004\u0012\u00020\u0003\u0012\u000b\u0012\t\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u0018\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&\u00a2\u0006\u0002\u0010\'J\u000b\u0010N\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010Q\u001a\u00020\u0014H\u00c6\u0003J\u001e\u0010R\u001a\u0017\u0012\u0004\u0012\u00020\u0003\u0012\u000b\u0012\t\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u0018\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u001aH\u00c6\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u001eH\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010 H\u00c2\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\"H\u00c6\u0003J\u000f\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010$H\u00c6\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010&H\u00c6\u0003J\u0010\u0010\\\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010)J\t\u0010]\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\t\u0010_\u001a\u00020\u000cH\u00c6\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010a\u001a\u00020\u000fH\u00c6\u0003J\t\u0010b\u001a\u00020\u0007H\u00c6\u0003J\u0097\u0002\u0010c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00072\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u001d\u0008\u0002\u0010\u0015\u001a\u0017\u0012\u0004\u0012\u00020\u0003\u0012\u000b\u0012\t\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u0018\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&H\u00c6\u0001\u00a2\u0006\u0002\u0010dJ\t\u0010e\u001a\u00020fH\u00d6\u0001J\u0013\u0010g\u001a\u00020\u00142\u0008\u0010h\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010i\u001a\u00020fH\u00d6\u0001J\u0008\u0010j\u001a\u00020\u0014H\u0016J\u0008\u0010k\u001a\u00020\u0014H\u0016J\t\u0010l\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010m\u001a\u00020n2\u0006\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u00020fH\u00d6\u0001R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u0008(\u0010)R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0016\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0014\u0010\u0010\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010,R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00102R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00102R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00102R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u00109R\u0013\u0010!\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R&\u0010\u0015\u001a\u0017\u0012\u0004\u0012\u00020\u0003\u0012\u000b\u0012\t\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u0018\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=R\u0016\u0010%\u001a\u0004\u0018\u00010&X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?R\u0016\u0010@\u001a\u0004\u0018\u00010A8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010CR\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010ER\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u00102R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010HR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u00102R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010#\u001a\u0004\u0018\u00010$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010M\u00a8\u0006y"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentIntent;",
        "Lcom/stripe/android/model/StripeIntent;",
        "id",
        "",
        "paymentMethodTypes",
        "",
        "amount",
        "",
        "canceledAt",
        "cancellationReason",
        "Lcom/stripe/android/model/PaymentIntent$CancellationReason;",
        "captureMethod",
        "Lcom/stripe/android/model/PaymentIntent$CaptureMethod;",
        "clientSecret",
        "confirmationMethod",
        "Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;",
        "created",
        "currency",
        "description",
        "isLiveMode",
        "",
        "nextAction",
        "",
        "",
        "Lkotlinx/parcelize/RawValue;",
        "paymentMethod",
        "Lcom/stripe/android/model/PaymentMethod;",
        "paymentMethodId",
        "receiptEmail",
        "status",
        "Lcom/stripe/android/model/StripeIntent$Status;",
        "setupFutureUsage",
        "Lcom/stripe/android/model/StripeIntent$Usage;",
        "lastPaymentError",
        "Lcom/stripe/android/model/PaymentIntent$Error;",
        "shipping",
        "Lcom/stripe/android/model/PaymentIntent$Shipping;",
        "nextActionData",
        "Lcom/stripe/android/model/StripeIntent$NextActionData;",
        "(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;JLcom/stripe/android/model/PaymentIntent$CancellationReason;Lcom/stripe/android/model/PaymentIntent$CaptureMethod;Ljava/lang/String;Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;JLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/stripe/android/model/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/StripeIntent$Status;Lcom/stripe/android/model/StripeIntent$Usage;Lcom/stripe/android/model/PaymentIntent$Error;Lcom/stripe/android/model/PaymentIntent$Shipping;Lcom/stripe/android/model/StripeIntent$NextActionData;)V",
        "getAmount",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getCanceledAt",
        "()J",
        "getCancellationReason",
        "()Lcom/stripe/android/model/PaymentIntent$CancellationReason;",
        "getCaptureMethod",
        "()Lcom/stripe/android/model/PaymentIntent$CaptureMethod;",
        "getClientSecret",
        "()Ljava/lang/String;",
        "getConfirmationMethod",
        "()Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;",
        "getCreated",
        "getCurrency",
        "getDescription",
        "getId",
        "()Z",
        "getLastPaymentError",
        "()Lcom/stripe/android/model/PaymentIntent$Error;",
        "getNextAction",
        "()Ljava/util/Map;",
        "getNextActionData",
        "()Lcom/stripe/android/model/StripeIntent$NextActionData;",
        "nextActionType",
        "Lcom/stripe/android/model/StripeIntent$NextActionType;",
        "getNextActionType",
        "()Lcom/stripe/android/model/StripeIntent$NextActionType;",
        "getPaymentMethod",
        "()Lcom/stripe/android/model/PaymentMethod;",
        "getPaymentMethodId",
        "getPaymentMethodTypes",
        "()Ljava/util/List;",
        "getReceiptEmail",
        "getShipping",
        "()Lcom/stripe/android/model/PaymentIntent$Shipping;",
        "getStatus",
        "()Lcom/stripe/android/model/StripeIntent$Status;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;JLcom/stripe/android/model/PaymentIntent$CancellationReason;Lcom/stripe/android/model/PaymentIntent$CaptureMethod;Ljava/lang/String;Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;JLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/stripe/android/model/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/StripeIntent$Status;Lcom/stripe/android/model/StripeIntent$Usage;Lcom/stripe/android/model/PaymentIntent$Error;Lcom/stripe/android/model/PaymentIntent$Shipping;Lcom/stripe/android/model/StripeIntent$NextActionData;)Lcom/stripe/android/model/PaymentIntent;",
        "describeContents",
        "",
        "equals",
        "other",
        "hashCode",
        "requiresAction",
        "requiresConfirmation",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "CancellationReason",
        "CaptureMethod",
        "ClientSecret",
        "Companion",
        "ConfirmationMethod",
        "Error",
        "Shipping",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/stripe/android/model/PaymentIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/android/model/PaymentIntent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final amount:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final canceledAt:J

.field private final cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final clientSecret:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final created:J

.field private final currency:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final description:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isLiveMode:Z

.field private final lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nextAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nextActionData:Lcom/stripe/android/model/StripeIntent$NextActionData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paymentMethod:Lcom/stripe/android/model/PaymentMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paymentMethodId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receiptEmail:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final setupFutureUsage:Lcom/stripe/android/model/StripeIntent$Usage;

.field private final shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final status:Lcom/stripe/android/model/StripeIntent$Status;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/model/PaymentIntent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/PaymentIntent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/PaymentIntent;->Companion:Lcom/stripe/android/model/PaymentIntent$Companion;

    new-instance v0, Lcom/stripe/android/model/PaymentIntent$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/PaymentIntent$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/PaymentIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;JLcom/stripe/android/model/PaymentIntent$CancellationReason;Lcom/stripe/android/model/PaymentIntent$CaptureMethod;Ljava/lang/String;Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;JLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/stripe/android/model/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/StripeIntent$Status;Lcom/stripe/android/model/StripeIntent$Usage;Lcom/stripe/android/model/PaymentIntent$Error;Lcom/stripe/android/model/PaymentIntent$Shipping;Lcom/stripe/android/model/StripeIntent$NextActionData;)V
    .registers 30
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/model/PaymentIntent$CancellationReason;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/model/PaymentIntent$CaptureMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/stripe/android/model/StripeIntent$Status;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/stripe/android/model/StripeIntent$Usage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Lcom/stripe/android/model/PaymentIntent$Error;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Lcom/stripe/android/model/PaymentIntent$Shipping;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Lcom/stripe/android/model/StripeIntent$NextActionData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "J",
            "Lcom/stripe/android/model/PaymentIntent$CancellationReason;",
            "Lcom/stripe/android/model/PaymentIntent$CaptureMethod;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/android/model/PaymentMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/StripeIntent$Status;",
            "Lcom/stripe/android/model/StripeIntent$Usage;",
            "Lcom/stripe/android/model/PaymentIntent$Error;",
            "Lcom/stripe/android/model/PaymentIntent$Shipping;",
            "Lcom/stripe/android/model/StripeIntent$NextActionData;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p7

    move-object v3, p9

    const-string v4, "paymentMethodTypes"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "captureMethod"

    invoke-static {p7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "confirmationMethod"

    invoke-static {p9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v4, p1

    iput-object v4, v0, Lcom/stripe/android/model/PaymentIntent;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->amount:Ljava/lang/Long;

    move-wide v4, p4

    iput-wide v4, v0, Lcom/stripe/android/model/PaymentIntent;->canceledAt:J

    move-object v1, p6

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    iput-object v2, v0, Lcom/stripe/android/model/PaymentIntent;->captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    move-object v1, p8

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->clientSecret:Ljava/lang/String;

    iput-object v3, v0, Lcom/stripe/android/model/PaymentIntent;->confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    move-wide/from16 v1, p10

    iput-wide v1, v0, Lcom/stripe/android/model/PaymentIntent;->created:J

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->currency:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->description:Ljava/lang/String;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/stripe/android/model/PaymentIntent;->isLiveMode:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->nextAction:Ljava/util/Map;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->paymentMethodId:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->receiptEmail:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->status:Lcom/stripe/android/model/StripeIntent$Status;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->setupFutureUsage:Lcom/stripe/android/model/StripeIntent$Usage;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/stripe/android/model/PaymentIntent;->nextActionData:Lcom/stripe/android/model/StripeIntent$NextActionData;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;JLcom/stripe/android/model/PaymentIntent$CancellationReason;Lcom/stripe/android/model/PaymentIntent$CaptureMethod;Ljava/lang/String;Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;JLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/stripe/android/model/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/StripeIntent$Status;Lcom/stripe/android/model/StripeIntent$Usage;Lcom/stripe/android/model/PaymentIntent$Error;Lcom/stripe/android/model/PaymentIntent$Shipping;Lcom/stripe/android/model/StripeIntent$NextActionData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 53

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_a

    const-wide/16 v1, 0x0

    move-wide v7, v1

    goto :goto_c

    :cond_a
    move-wide/from16 v7, p4

    :goto_c
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 46
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    move-object v9, v1

    goto :goto_18

    :cond_16
    move-object/from16 v9, p6

    :goto_18
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_20

    .line 52
    sget-object v1, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;->Automatic:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    move-object v10, v1

    goto :goto_22

    :cond_20
    move-object/from16 v10, p7

    :goto_22
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2a

    .line 78
    sget-object v1, Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;->Automatic:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    move-object v12, v1

    goto :goto_2c

    :cond_2a
    move-object/from16 v12, p9

    :goto_2c
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_36

    .line 93
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v16, v1

    goto :goto_38

    :cond_36
    move-object/from16 v16, p13

    :goto_38
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_42

    .line 105
    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    move-object/from16 v18, v1

    goto :goto_44

    :cond_42
    move-object/from16 v18, p15

    :goto_44
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_4e

    .line 107
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/PaymentMethod;

    move-object/from16 v19, v1

    goto :goto_50

    :cond_4e
    move-object/from16 v19, p16

    :goto_50
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_5a

    .line 113
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v20, v1

    goto :goto_5c

    :cond_5a
    move-object/from16 v20, p17

    :goto_5c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_68

    .line 118
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v21, v1

    goto :goto_6a

    :cond_68
    move-object/from16 v21, p18

    :goto_6a
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_75

    .line 123
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/StripeIntent$Status;

    move-object/from16 v22, v1

    goto :goto_77

    :cond_75
    move-object/from16 v22, p19

    :goto_77
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_82

    .line 125
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/StripeIntent$Usage;

    move-object/from16 v23, v1

    goto :goto_84

    :cond_82
    move-object/from16 v23, p20

    :goto_84
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8f

    .line 130
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/PaymentIntent$Error;

    move-object/from16 v24, v1

    goto :goto_91

    :cond_8f
    move-object/from16 v24, p21

    :goto_91
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9c

    .line 135
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/PaymentIntent$Shipping;

    move-object/from16 v25, v1

    goto :goto_9e

    :cond_9c
    move-object/from16 v25, p22

    :goto_9e
    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a9

    .line 137
    move-object v0, v2

    check-cast v0, Lcom/stripe/android/model/StripeIntent$NextActionData;

    move-object/from16 v26, v0

    goto :goto_ab

    :cond_a9
    move-object/from16 v26, p23

    :goto_ab
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v11, p8

    move-wide/from16 v13, p10

    move-object/from16 v15, p12

    move/from16 v17, p14

    invoke-direct/range {v3 .. v26}, Lcom/stripe/android/model/PaymentIntent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;JLcom/stripe/android/model/PaymentIntent$CancellationReason;Lcom/stripe/android/model/PaymentIntent$CaptureMethod;Ljava/lang/String;Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;JLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/stripe/android/model/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/StripeIntent$Status;Lcom/stripe/android/model/StripeIntent$Usage;Lcom/stripe/android/model/PaymentIntent$Error;Lcom/stripe/android/model/PaymentIntent$Shipping;Lcom/stripe/android/model/StripeIntent$NextActionData;)V

    return-void
.end method

.method private final component18()Lcom/stripe/android/model/StripeIntent$Usage;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->setupFutureUsage:Lcom/stripe/android/model/StripeIntent$Usage;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/PaymentIntent;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;JLcom/stripe/android/model/PaymentIntent$CancellationReason;Lcom/stripe/android/model/PaymentIntent$CaptureMethod;Ljava/lang/String;Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;JLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/stripe/android/model/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/StripeIntent$Status;Lcom/stripe/android/model/StripeIntent$Usage;Lcom/stripe/android/model/PaymentIntent$Error;Lcom/stripe/android/model/PaymentIntent$Shipping;Lcom/stripe/android/model/StripeIntent$NextActionData;ILjava/lang/Object;)Lcom/stripe/android/model/PaymentIntent;
    .registers 44

    move-object/from16 v0, p0

    move/from16 v1, p24

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_d
    move-object/from16 v2, p1

    :goto_f
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v3

    goto :goto_1a

    :cond_18
    move-object/from16 v3, p2

    :goto_1a
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_21

    iget-object v4, v0, Lcom/stripe/android/model/PaymentIntent;->amount:Ljava/lang/Long;

    goto :goto_23

    :cond_21
    move-object/from16 v4, p3

    :goto_23
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_2a

    iget-wide v5, v0, Lcom/stripe/android/model/PaymentIntent;->canceledAt:J

    goto :goto_2c

    :cond_2a
    move-wide/from16 v5, p4

    :goto_2c
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_33

    iget-object v7, v0, Lcom/stripe/android/model/PaymentIntent;->cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    goto :goto_35

    :cond_33
    move-object/from16 v7, p6

    :goto_35
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_3c

    iget-object v8, v0, Lcom/stripe/android/model/PaymentIntent;->captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    goto :goto_3e

    :cond_3c
    move-object/from16 v8, p7

    :goto_3e
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v9

    goto :goto_49

    :cond_47
    move-object/from16 v9, p8

    :goto_49
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_50

    iget-object v10, v0, Lcom/stripe/android/model/PaymentIntent;->confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    goto :goto_52

    :cond_50
    move-object/from16 v10, p9

    :goto_52
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_5b

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->getCreated()J

    move-result-wide v11

    goto :goto_5d

    :cond_5b
    move-wide/from16 v11, p10

    :goto_5d
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_64

    iget-object v13, v0, Lcom/stripe/android/model/PaymentIntent;->currency:Ljava/lang/String;

    goto :goto_66

    :cond_64
    move-object/from16 v13, p12

    :goto_66
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->getDescription()Ljava/lang/String;

    move-result-object v14

    goto :goto_71

    :cond_6f
    move-object/from16 v14, p13

    :goto_71
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_7a

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->isLiveMode()Z

    move-result v15

    goto :goto_7c

    :cond_7a
    move/from16 v15, p14

    :goto_7c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_85

    iget-object v15, v0, Lcom/stripe/android/model/PaymentIntent;->nextAction:Ljava/util/Map;

    goto :goto_87

    :cond_85
    move-object/from16 v15, p15

    :goto_87
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_92

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object v15

    goto :goto_94

    :cond_92
    move-object/from16 v15, p16

    :goto_94
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_9f

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v15

    goto :goto_a1

    :cond_9f
    move-object/from16 v15, p17

    :goto_a1
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_ad

    move-object/from16 p17, v15

    iget-object v15, v0, Lcom/stripe/android/model/PaymentIntent;->receiptEmail:Ljava/lang/String;

    goto :goto_b1

    :cond_ad
    move-object/from16 p17, v15

    move-object/from16 v15, p18

    :goto_b1
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_bc

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v16

    goto :goto_be

    :cond_bc
    move-object/from16 v16, p19

    :goto_be
    const/high16 v17, 0x20000

    and-int v17, v1, v17

    if-eqz v17, :cond_c9

    move-object/from16 p18, v15

    iget-object v15, v0, Lcom/stripe/android/model/PaymentIntent;->setupFutureUsage:Lcom/stripe/android/model/StripeIntent$Usage;

    goto :goto_cd

    :cond_c9
    move-object/from16 p18, v15

    move-object/from16 v15, p20

    :goto_cd
    const/high16 v17, 0x40000

    and-int v17, v1, v17

    if-eqz v17, :cond_d8

    move-object/from16 p20, v15

    iget-object v15, v0, Lcom/stripe/android/model/PaymentIntent;->lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;

    goto :goto_dc

    :cond_d8
    move-object/from16 p20, v15

    move-object/from16 v15, p21

    :goto_dc
    const/high16 v17, 0x80000

    and-int v17, v1, v17

    if-eqz v17, :cond_e7

    move-object/from16 p21, v15

    iget-object v15, v0, Lcom/stripe/android/model/PaymentIntent;->shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;

    goto :goto_eb

    :cond_e7
    move-object/from16 p21, v15

    move-object/from16 v15, p22

    :goto_eb
    const/high16 v17, 0x100000

    and-int v1, v1, v17

    if-eqz v1, :cond_f6

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/PaymentIntent;->getNextActionData()Lcom/stripe/android/model/StripeIntent$NextActionData;

    move-result-object v1

    goto :goto_f8

    :cond_f6
    move-object/from16 v1, p23

    :goto_f8
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p19, v16

    move-object/from16 p22, v15

    move-object/from16 p23, v1

    invoke-virtual/range {p0 .. p23}, Lcom/stripe/android/model/PaymentIntent;->copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;JLcom/stripe/android/model/PaymentIntent$CancellationReason;Lcom/stripe/android/model/PaymentIntent$CaptureMethod;Ljava/lang/String;Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;JLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/stripe/android/model/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/StripeIntent$Status;Lcom/stripe/android/model/StripeIntent$Usage;Lcom/stripe/android/model/PaymentIntent$Error;Lcom/stripe/android/model/PaymentIntent$Shipping;Lcom/stripe/android/model/StripeIntent$NextActionData;)Lcom/stripe/android/model/PaymentIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component12()Z
    .registers 2

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->isLiveMode()Z

    move-result v0

    return v0
.end method

.method public final component13()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->nextAction:Ljava/util/Map;

    return-object v0
.end method

.method public final component14()Lcom/stripe/android/model/PaymentMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object v0

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->receiptEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Lcom/stripe/android/model/StripeIntent$Status;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v0

    return-object v0
.end method

.method public final component19()Lcom/stripe/android/model/PaymentIntent$Error;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final component20()Lcom/stripe/android/model/PaymentIntent$Shipping;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;

    return-object v0
.end method

.method public final component21()Lcom/stripe/android/model/StripeIntent$NextActionData;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getNextActionData()Lcom/stripe/android/model/StripeIntent$NextActionData;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/Long;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/stripe/android/model/PaymentIntent;->canceledAt:J

    return-wide v0
.end method

.method public final component5()Lcom/stripe/android/model/PaymentIntent$CancellationReason;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    return-object v0
.end method

.method public final component6()Lcom/stripe/android/model/PaymentIntent$CaptureMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    return-object v0
.end method

.method public final component9()J
    .registers 3

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getCreated()J

    move-result-wide v0

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;JLcom/stripe/android/model/PaymentIntent$CancellationReason;Lcom/stripe/android/model/PaymentIntent$CaptureMethod;Ljava/lang/String;Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;JLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/stripe/android/model/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/StripeIntent$Status;Lcom/stripe/android/model/StripeIntent$Usage;Lcom/stripe/android/model/PaymentIntent$Error;Lcom/stripe/android/model/PaymentIntent$Shipping;Lcom/stripe/android/model/StripeIntent$NextActionData;)Lcom/stripe/android/model/PaymentIntent;
    .registers 49
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/model/PaymentIntent$CancellationReason;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/stripe/android/model/PaymentIntent$CaptureMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/stripe/android/model/StripeIntent$Status;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/stripe/android/model/StripeIntent$Usage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Lcom/stripe/android/model/PaymentIntent$Error;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Lcom/stripe/android/model/PaymentIntent$Shipping;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Lcom/stripe/android/model/StripeIntent$NextActionData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "J",
            "Lcom/stripe/android/model/PaymentIntent$CancellationReason;",
            "Lcom/stripe/android/model/PaymentIntent$CaptureMethod;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/android/model/PaymentMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/StripeIntent$Status;",
            "Lcom/stripe/android/model/StripeIntent$Usage;",
            "Lcom/stripe/android/model/PaymentIntent$Error;",
            "Lcom/stripe/android/model/PaymentIntent$Shipping;",
            "Lcom/stripe/android/model/StripeIntent$NextActionData;",
            ")",
            "Lcom/stripe/android/model/PaymentIntent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    const-string v0, "paymentMethodTypes"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureMethod"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmationMethod"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v24, Lcom/stripe/android/model/PaymentIntent;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v23}, Lcom/stripe/android/model/PaymentIntent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;JLcom/stripe/android/model/PaymentIntent$CancellationReason;Lcom/stripe/android/model/PaymentIntent$CaptureMethod;Ljava/lang/String;Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;JLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/stripe/android/model/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/StripeIntent$Status;Lcom/stripe/android/model/StripeIntent$Usage;Lcom/stripe/android/model/PaymentIntent$Error;Lcom/stripe/android/model/PaymentIntent$Shipping;Lcom/stripe/android/model/StripeIntent$NextActionData;)V

    return-object v24
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_fd

    instance-of v0, p1, Lcom/stripe/android/model/PaymentIntent;

    if-eqz v0, :cond_fb

    check-cast p1, Lcom/stripe/android/model/PaymentIntent;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->amount:Ljava/lang/Long;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->amount:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-wide v0, p0, Lcom/stripe/android/model/PaymentIntent;->canceledAt:J

    iget-wide v2, p1, Lcom/stripe/android/model/PaymentIntent;->canceledAt:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getCreated()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getCreated()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->currency:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->isLiveMode()Z

    move-result v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->isLiveMode()Z

    move-result v1

    if-ne v0, v1, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->nextAction:Ljava/util/Map;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->nextAction:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->receiptEmail:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->receiptEmail:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->setupFutureUsage:Lcom/stripe/android/model/StripeIntent$Usage;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->setupFutureUsage:Lcom/stripe/android/model/StripeIntent$Usage;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;

    iget-object v1, p1, Lcom/stripe/android/model/PaymentIntent;->shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getNextActionData()Lcom/stripe/android/model/StripeIntent$NextActionData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getNextActionData()Lcom/stripe/android/model/StripeIntent$NextActionData;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fb

    goto :goto_fd

    :cond_fb
    const/4 p1, 0x0

    return p1

    :cond_fd
    :goto_fd
    const/4 p1, 0x1

    return p1
.end method

.method public final getAmount()Ljava/lang/Long;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCanceledAt()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/stripe/android/model/PaymentIntent;->canceledAt:J

    return-wide v0
.end method

.method public final getCancellationReason()Lcom/stripe/android/model/PaymentIntent$CancellationReason;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    return-object v0
.end method

.method public final getCaptureMethod()Lcom/stripe/android/model/PaymentIntent$CaptureMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfirmationMethod()Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    return-object v0
.end method

.method public getCreated()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/stripe/android/model/PaymentIntent;->created:J

    return-wide v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastPaymentError()Lcom/stripe/android/model/PaymentIntent$Error;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;

    return-object v0
.end method

.method public final getNextAction()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->nextAction:Ljava/util/Map;

    return-object v0
.end method

.method public getNextActionData()Lcom/stripe/android/model/StripeIntent$NextActionData;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->nextActionData:Lcom/stripe/android/model/StripeIntent$NextActionData;

    return-object v0
.end method

.method public getNextActionType()Lcom/stripe/android/model/StripeIntent$NextActionType;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getNextActionData()Lcom/stripe/android/model/StripeIntent$NextActionData;

    move-result-object v0

    .line 141
    instance-of v1, v0, Lcom/stripe/android/model/StripeIntent$NextActionData$SdkData;

    if-eqz v1, :cond_b

    sget-object v0, Lcom/stripe/android/model/StripeIntent$NextActionType;->UseStripeSdk:Lcom/stripe/android/model/StripeIntent$NextActionType;

    goto :goto_1a

    .line 142
    :cond_b
    instance-of v1, v0, Lcom/stripe/android/model/StripeIntent$NextActionData$RedirectToUrl;

    if-eqz v1, :cond_12

    sget-object v0, Lcom/stripe/android/model/StripeIntent$NextActionType;->RedirectToUrl:Lcom/stripe/android/model/StripeIntent$NextActionType;

    goto :goto_1a

    .line 143
    :cond_12
    instance-of v0, v0, Lcom/stripe/android/model/StripeIntent$NextActionData$DisplayOxxoDetails;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/stripe/android/model/StripeIntent$NextActionType;->DisplayOxxoDetails:Lcom/stripe/android/model/StripeIntent$NextActionType;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    return-object v0
.end method

.method public getPaymentMethodId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getReceiptEmail()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->receiptEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getShipping()Lcom/stripe/android/model/PaymentIntent$Shipping;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;

    return-object v0
.end method

.method public getStatus()Lcom/stripe/android/model/StripeIntent$Status;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->status:Lcom/stripe/android/model/StripeIntent$Status;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->amount:Ljava/lang/Long;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_28

    :cond_27
    move v2, v1

    :goto_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/android/model/PaymentIntent;->canceledAt:J

    invoke-static {v2, v3}, L$r8$java8methods$utility$Long$hashCode$IJ;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5a

    :cond_59
    move v2, v1

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_67

    :cond_66
    move v2, v1

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getCreated()J

    move-result-wide v2

    invoke-static {v2, v3}, L$r8$java8methods$utility$Long$hashCode$IJ;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->currency:Ljava/lang/String;

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7f

    :cond_7e
    move v2, v1

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8e

    :cond_8d
    move v2, v1

    :goto_8e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->isLiveMode()Z

    move-result v2

    if-eqz v2, :cond_98

    const/4 v2, 0x1

    :cond_98
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->nextAction:Ljava/util/Map;

    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a5

    :cond_a4
    move v2, v1

    :goto_a5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object v2

    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b4

    :cond_b3
    move v2, v1

    :goto_b4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c3

    :cond_c2
    move v2, v1

    :goto_c3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->receiptEmail:Ljava/lang/String;

    if-eqz v2, :cond_cf

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d0

    :cond_cf
    move v2, v1

    :goto_d0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v2

    if-eqz v2, :cond_de

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_df

    :cond_de
    move v2, v1

    :goto_df
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->setupFutureUsage:Lcom/stripe/android/model/StripeIntent$Usage;

    if-eqz v2, :cond_eb

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_ec

    :cond_eb
    move v2, v1

    :goto_ec
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;

    if-eqz v2, :cond_f8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f9

    :cond_f8
    move v2, v1

    :goto_f9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/PaymentIntent;->shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;

    if-eqz v2, :cond_105

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_106

    :cond_105
    move v2, v1

    :goto_106
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getNextActionData()Lcom/stripe/android/model/StripeIntent$NextActionData;

    move-result-object v2

    if-eqz v2, :cond_113

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_113
    add-int/2addr v0, v1

    return v0
.end method

.method public isLiveMode()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/stripe/android/model/PaymentIntent;->isLiveMode:Z

    return v0
.end method

.method public requiresAction()Z
    .registers 3

    .line 148
    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v0

    sget-object v1, Lcom/stripe/android/model/StripeIntent$Status;->RequiresAction:Lcom/stripe/android/model/StripeIntent$Status;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public requiresConfirmation()Z
    .registers 3

    .line 152
    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v0

    sget-object v1, Lcom/stripe/android/model/StripeIntent$Status;->RequiresConfirmation:Lcom/stripe/android/model/StripeIntent$Status;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentIntent(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethodTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->amount:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canceledAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/stripe/android/model/PaymentIntent;->canceledAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cancellationReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", captureMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmationMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getCreated()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->isLiveMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nextAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->nextAction:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", receiptEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->receiptEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setupFutureUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->setupFutureUsage:Lcom/stripe/android/model/StripeIntent$Usage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastPaymentError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shipping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/PaymentIntent;->shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextActionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentIntent;->getNextActionData()Lcom/stripe/android/model/StripeIntent$NextActionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->amount:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_23

    :cond_20
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-wide v3, p0, Lcom/stripe/android/model/PaymentIntent;->canceledAt:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->cancellationReason:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    if-eqz v0, :cond_37

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3a

    :cond_37
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3a
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->captureMethod:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->clientSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->confirmationMethod:Lcom/stripe/android/model/PaymentIntent$ConfirmationMethod;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/android/model/PaymentIntent;->created:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/stripe/android/model/PaymentIntent;->isLiveMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->nextAction:Ljava/util/Map;

    if-eqz v0, :cond_96

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_7b

    :cond_96
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_99
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    if-eqz v0, :cond_a4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a7

    :cond_a4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a7
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->paymentMethodId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->receiptEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->status:Lcom/stripe/android/model/StripeIntent$Status;

    if-eqz v0, :cond_c0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_c3

    :cond_c0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c3
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->setupFutureUsage:Lcom/stripe/android/model/StripeIntent$Usage;

    if-eqz v0, :cond_d2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_d5

    :cond_d2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d5
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->lastPaymentError:Lcom/stripe/android/model/PaymentIntent$Error;

    if-eqz v0, :cond_e0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e3

    :cond_e0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e3
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->shipping:Lcom/stripe/android/model/PaymentIntent$Shipping;

    if-eqz v0, :cond_ee

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f1

    :cond_ee
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f1
    iget-object v0, p0, Lcom/stripe/android/model/PaymentIntent;->nextActionData:Lcom/stripe/android/model/StripeIntent$NextActionData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
