.class public final Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;
.super Ljava/lang/Object;
.source "PaymentMethodsActivityStarter.kt"

# interfaces
.implements Lcom/stripe/android/view/ActivityStarter$Args;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/PaymentMethodsActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Creator;,
        Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Builder;,
        Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u00080\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 J2\u00020\u0001:\u0002IJBw\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008)J\u000e\u0010*\u001a\u00020\u0008H\u00c0\u0003\u00a2\u0006\u0002\u0008+J\u000e\u0010,\u001a\u00020\u0008H\u00c0\u0003\u00a2\u0006\u0002\u0008-J\t\u0010.\u001a\u00020\u0005H\u00c6\u0003J\t\u0010/\u001a\u00020\u0005H\u00c6\u0003J\u000e\u00100\u001a\u00020\u0008H\u00c0\u0003\u00a2\u0006\u0002\u00081J\u0014\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c0\u0003\u00a2\u0006\u0002\u00083J\u0010\u00104\u001a\u0004\u0018\u00010\rH\u00c0\u0003\u00a2\u0006\u0002\u00085J\u0012\u00106\u001a\u0004\u0018\u00010\u0005H\u00c0\u0003\u00a2\u0006\u0004\u00087\u0010&J\u000e\u00108\u001a\u00020\u0010H\u00c0\u0003\u00a2\u0006\u0002\u00089J\u000e\u0010:\u001a\u00020\u0008H\u00c0\u0003\u00a2\u0006\u0002\u0008;J\u0088\u0001\u0010<\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010=J\t\u0010>\u001a\u00020\u0005H\u00d6\u0001J\u0013\u0010?\u001a\u00020\u00082\u0008\u0010@\u001a\u0004\u0018\u00010AH\u00d6\u0003J\t\u0010B\u001a\u00020\u0005H\u00d6\u0001J\t\u0010C\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u000f\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0013\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0016R\u0014\u0010\u0011\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001aR\u0014\u0010\u0012\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&\u00a8\u0006K"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;",
        "Lcom/stripe/android/view/ActivityStarter$Args;",
        "initialPaymentMethodId",
        "",
        "paymentMethodsFooterLayoutId",
        "",
        "addPaymentMethodFooterLayoutId",
        "isPaymentSessionActive",
        "",
        "paymentMethodTypes",
        "",
        "Lcom/stripe/android/model/PaymentMethod$Type;",
        "paymentConfiguration",
        "Lcom/stripe/android/PaymentConfiguration;",
        "windowFlags",
        "billingAddressFields",
        "Lcom/stripe/android/view/BillingAddressFields;",
        "shouldShowGooglePay",
        "useGooglePay",
        "canDeletePaymentMethods",
        "(Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZ)V",
        "getAddPaymentMethodFooterLayoutId",
        "()I",
        "getBillingAddressFields$stripe_release",
        "()Lcom/stripe/android/view/BillingAddressFields;",
        "getCanDeletePaymentMethods$stripe_release",
        "()Z",
        "getInitialPaymentMethodId$stripe_release",
        "()Ljava/lang/String;",
        "isPaymentSessionActive$stripe_release",
        "getPaymentConfiguration$stripe_release",
        "()Lcom/stripe/android/PaymentConfiguration;",
        "getPaymentMethodTypes$stripe_release",
        "()Ljava/util/List;",
        "getPaymentMethodsFooterLayoutId",
        "getShouldShowGooglePay$stripe_release",
        "getUseGooglePay$stripe_release",
        "getWindowFlags$stripe_release",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component1$stripe_release",
        "component10",
        "component10$stripe_release",
        "component11",
        "component11$stripe_release",
        "component2",
        "component3",
        "component4",
        "component4$stripe_release",
        "component5",
        "component5$stripe_release",
        "component6",
        "component6$stripe_release",
        "component7",
        "component7$stripe_release",
        "component8",
        "component8$stripe_release",
        "component9",
        "component9$stripe_release",
        "copy",
        "(Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZ)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Builder",
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

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final addPaymentMethodFooterLayoutId:I

.field private final billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final canDeletePaymentMethods:Z

.field private final initialPaymentMethodId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isPaymentSessionActive:Z

.field private final paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentMethodsFooterLayoutId:I

.field private final shouldShowGooglePay:Z

.field private final useGooglePay:Z

.field private final windowFlags:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->Companion:Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Companion;

    new-instance v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Creator;

    invoke-direct {v0}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZ)V
    .registers 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/PaymentConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/view/BillingAddressFields;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;",
            "Lcom/stripe/android/PaymentConfiguration;",
            "Ljava/lang/Integer;",
            "Lcom/stripe/android/view/BillingAddressFields;",
            "ZZZ)V"
        }
    .end annotation

    const-string v0, "paymentMethodTypes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingAddressFields"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->initialPaymentMethodId:Ljava/lang/String;

    iput p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodsFooterLayoutId:I

    iput p3, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->addPaymentMethodFooterLayoutId:I

    iput-boolean p4, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive:Z

    iput-object p5, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodTypes:Ljava/util/List;

    iput-object p6, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    iput-object p7, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->windowFlags:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    iput-boolean p9, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->shouldShowGooglePay:Z

    iput-boolean p10, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->useGooglePay:Z

    iput-boolean p11, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->canDeletePaymentMethods:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 28

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 47
    check-cast v1, Ljava/lang/Integer;

    move-object v9, v1

    goto :goto_d

    :cond_b
    move-object/from16 v9, p7

    :goto_d
    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    move v11, v2

    goto :goto_16

    :cond_14
    move/from16 v11, p9

    :goto_16
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1c

    move v12, v2

    goto :goto_1e

    :cond_1c
    move/from16 v12, p10

    :goto_1e
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    move v13, v0

    goto :goto_27

    :cond_25
    move/from16 v13, p11

    :goto_27
    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    .line 51
    invoke-direct/range {v2 .. v13}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;-><init>(Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZILjava/lang/Object;)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;
    .registers 26

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->initialPaymentMethodId:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget v3, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodsFooterLayoutId:I

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->addPaymentMethodFooterLayoutId:I

    goto :goto_1b

    :cond_1a
    move v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-boolean v5, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive:Z

    goto :goto_24

    :cond_22
    move/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2b

    iget-object v6, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodTypes:Ljava/util/List;

    goto :goto_2d

    :cond_2b
    move-object/from16 v6, p5

    :goto_2d
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_34

    iget-object v7, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    goto :goto_36

    :cond_34
    move-object/from16 v7, p6

    :goto_36
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3d

    iget-object v8, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->windowFlags:Ljava/lang/Integer;

    goto :goto_3f

    :cond_3d
    move-object/from16 v8, p7

    :goto_3f
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_46

    iget-object v9, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    goto :goto_48

    :cond_46
    move-object/from16 v9, p8

    :goto_48
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4f

    iget-boolean v10, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->shouldShowGooglePay:Z

    goto :goto_51

    :cond_4f
    move/from16 v10, p9

    :goto_51
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_58

    iget-boolean v11, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->useGooglePay:Z

    goto :goto_5a

    :cond_58
    move/from16 v11, p10

    :goto_5a
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_61

    iget-boolean v1, v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->canDeletePaymentMethods:Z

    goto :goto_63

    :cond_61
    move/from16 v1, p11

    :goto_63
    move-object p1, v2

    move p2, v3

    move p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->copy(Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZ)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->initialPaymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10$stripe_release()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->useGooglePay:Z

    return v0
.end method

.method public final component11$stripe_release()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->canDeletePaymentMethods:Z

    return v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodsFooterLayoutId:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->addPaymentMethodFooterLayoutId:I

    return v0
.end method

.method public final component4$stripe_release()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive:Z

    return v0
.end method

.method public final component5$stripe_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final component6$stripe_release()Lcom/stripe/android/PaymentConfiguration;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    return-object v0
.end method

.method public final component7$stripe_release()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->windowFlags:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8$stripe_release()Lcom/stripe/android/view/BillingAddressFields;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    return-object v0
.end method

.method public final component9$stripe_release()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->shouldShowGooglePay:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZ)Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;
    .registers 25
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/PaymentConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/view/BillingAddressFields;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;",
            "Lcom/stripe/android/PaymentConfiguration;",
            "Ljava/lang/Integer;",
            "Lcom/stripe/android/view/BillingAddressFields;",
            "ZZZ)",
            "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paymentMethodTypes"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingAddressFields"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;-><init>(Ljava/lang/String;IIZLjava/util/List;Lcom/stripe/android/PaymentConfiguration;Ljava/lang/Integer;Lcom/stripe/android/view/BillingAddressFields;ZZZ)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_61

    instance-of v0, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    if-eqz v0, :cond_5f

    check-cast p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->initialPaymentMethodId:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->initialPaymentMethodId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodsFooterLayoutId:I

    iget v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodsFooterLayoutId:I

    if-ne v0, v1, :cond_5f

    iget v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->addPaymentMethodFooterLayoutId:I

    iget v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->addPaymentMethodFooterLayoutId:I

    if-ne v0, v1, :cond_5f

    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive:Z

    iget-boolean v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive:Z

    if-ne v0, v1, :cond_5f

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodTypes:Ljava/util/List;

    iget-object v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodTypes:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    iget-object v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->windowFlags:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->windowFlags:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    iget-object v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->shouldShowGooglePay:Z

    iget-boolean v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->shouldShowGooglePay:Z

    if-ne v0, v1, :cond_5f

    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->useGooglePay:Z

    iget-boolean v1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->useGooglePay:Z

    if-ne v0, v1, :cond_5f

    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->canDeletePaymentMethods:Z

    iget-boolean p1, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->canDeletePaymentMethods:Z

    if-ne v0, p1, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 p1, 0x0

    return p1

    :cond_61
    :goto_61
    const/4 p1, 0x1

    return p1
.end method

.method public final getAddPaymentMethodFooterLayoutId()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->addPaymentMethodFooterLayoutId:I

    return v0
.end method

.method public final getBillingAddressFields$stripe_release()Lcom/stripe/android/view/BillingAddressFields;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    return-object v0
.end method

.method public final getCanDeletePaymentMethods$stripe_release()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->canDeletePaymentMethods:Z

    return v0
.end method

.method public final getInitialPaymentMethodId$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->initialPaymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentConfiguration$stripe_release()Lcom/stripe/android/PaymentConfiguration;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    return-object v0
.end method

.method public final getPaymentMethodTypes$stripe_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getPaymentMethodsFooterLayoutId()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodsFooterLayoutId:I

    return v0
.end method

.method public final getShouldShowGooglePay$stripe_release()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->shouldShowGooglePay:Z

    return v0
.end method

.method public final getUseGooglePay$stripe_release()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->useGooglePay:Z

    return v0
.end method

.method public final getWindowFlags$stripe_release()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->windowFlags:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->initialPaymentMethodId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodsFooterLayoutId:I

    invoke-static {v2}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->addPaymentMethodFooterLayoutId:I

    invoke-static {v2}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    move v2, v3

    :cond_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodTypes:Ljava/util/List;

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_32

    :cond_31
    move v2, v1

    :goto_32
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3f

    :cond_3e
    move v2, v1

    :goto_3f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->windowFlags:Ljava/lang/Integer;

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4c

    :cond_4b
    move v2, v1

    :goto_4c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_57
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->shouldShowGooglePay:Z

    if-eqz v1, :cond_5f

    move v1, v3

    :cond_5f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->useGooglePay:Z

    if-eqz v1, :cond_67

    move v1, v3

    :cond_67
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->canDeletePaymentMethods:Z

    if-eqz v1, :cond_6f

    move v1, v3

    :cond_6f
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPaymentSessionActive$stripe_release()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Args(initialPaymentMethodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->initialPaymentMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethodsFooterLayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodsFooterLayoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", addPaymentMethodFooterLayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->addPaymentMethodFooterLayoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPaymentSessionActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethodTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->windowFlags:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", billingAddressFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowGooglePay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->shouldShowGooglePay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useGooglePay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->useGooglePay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canDeletePaymentMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->canDeletePaymentMethods:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->initialPaymentMethodId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodsFooterLayoutId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->addPaymentMethodFooterLayoutId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->isPaymentSessionActive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentMethodTypes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_26

    :cond_3a
    iget-object p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->paymentConfiguration:Lcom/stripe/android/PaymentConfiguration;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_47

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4a

    :cond_47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4a
    iget-object p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->windowFlags:Ljava/lang/Integer;

    if-eqz p2, :cond_59

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5c

    :cond_59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5c
    iget-object p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->shouldShowGooglePay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->useGooglePay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Args;->canDeletePaymentMethods:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
