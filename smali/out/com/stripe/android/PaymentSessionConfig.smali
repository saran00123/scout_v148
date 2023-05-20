.class public final Lcom/stripe/android/PaymentSessionConfig;
.super Ljava/lang/Object;
.source "PaymentSessionConfig.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentSessionConfig$Creator;,
        Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;,
        Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;,
        Lcom/stripe/android/PaymentSessionConfig$Builder;,
        Lcom/stripe/android/PaymentSessionConfig$DefaultShippingInfoValidator;,
        Lcom/stripe/android/PaymentSessionConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentSessionConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentSessionConfig.kt\ncom/stripe/android/PaymentSessionConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,321:1\n1819#2:322\n1820#2:325\n12671#3,2:323\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentSessionConfig.kt\ncom/stripe/android/PaymentSessionConfig\n*L\n53#1:322\n53#1:325\n55#1,2:323\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u00083\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u0000 X2\u00020\u0001:\u0005WXYZ[B\u00c5\u0001\u0008\u0000\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0003\u0010\r\u001a\u00020\u000c\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u001dJ\u000f\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u00c6\u0003J\t\u00108\u001a\u00020\u0015H\u00c6\u0003J\t\u00109\u001a\u00020\tH\u00c6\u0003J\u000e\u0010:\u001a\u00020\tH\u00c0\u0003\u00a2\u0006\u0002\u0008;J\u000e\u0010<\u001a\u00020\u0019H\u00c0\u0003\u00a2\u0006\u0002\u0008=J\u0010\u0010>\u001a\u0004\u0018\u00010\u001bH\u00c0\u0003\u00a2\u0006\u0002\u0008?J\u0012\u0010@\u001a\u0004\u0018\u00010\u000cH\u00c0\u0003\u00a2\u0006\u0004\u0008A\u00104J\u000f\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010D\u001a\u00020\tH\u00c6\u0003J\t\u0010E\u001a\u00020\tH\u00c6\u0003J\t\u0010F\u001a\u00020\u000cH\u00c6\u0003J\t\u0010G\u001a\u00020\u000cH\u00c6\u0003J\u000f\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0003H\u00c6\u0003J\t\u0010I\u001a\u00020\tH\u00c6\u0003J\u00cc\u0001\u0010J\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0003\u0010\r\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t2\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001\u00a2\u0006\u0002\u0010KJ\t\u0010L\u001a\u00020\u000cH\u00d6\u0001J\u0013\u0010M\u001a\u00020\t2\u0008\u0010N\u001a\u0004\u0018\u00010OH\u00d6\u0003J\t\u0010P\u001a\u00020\u000cH\u00d6\u0001J\t\u0010Q\u001a\u00020\u0013H\u00d6\u0001J\u0019\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020\u000cH\u00d6\u0001R\u0013\u0010\r\u001a\u00020\u000c8\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u0016\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010%R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010%R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\'R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\'R\u0013\u0010\u000b\u001a\u00020\u000c8\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0014\u0010\u0018\u001a\u00020\u0019X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0014\u0010\u0017\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010%R\u0011\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010%R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u000cX\u0080\u0004\u00a2\u0006\n\n\u0002\u00105\u001a\u0004\u00083\u00104\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/stripe/android/PaymentSessionConfig;",
        "Landroid/os/Parcelable;",
        "hiddenShippingInfoFields",
        "",
        "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
        "optionalShippingInfoFields",
        "prepopulatedShippingInfo",
        "Lcom/stripe/android/model/ShippingInformation;",
        "isShippingInfoRequired",
        "",
        "isShippingMethodRequired",
        "paymentMethodsFooterLayoutId",
        "",
        "addPaymentMethodFooterLayoutId",
        "paymentMethodTypes",
        "Lcom/stripe/android/model/PaymentMethod$Type;",
        "shouldShowGooglePay",
        "allowedShippingCountryCodes",
        "",
        "",
        "billingAddressFields",
        "Lcom/stripe/android/view/BillingAddressFields;",
        "canDeletePaymentMethods",
        "shouldPrefetchCustomer",
        "shippingInformationValidator",
        "Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;",
        "shippingMethodsFactory",
        "Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;",
        "windowFlags",
        "(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;)V",
        "getAddPaymentMethodFooterLayoutId",
        "()I",
        "getAllowedShippingCountryCodes",
        "()Ljava/util/Set;",
        "getBillingAddressFields",
        "()Lcom/stripe/android/view/BillingAddressFields;",
        "getCanDeletePaymentMethods",
        "()Z",
        "getHiddenShippingInfoFields",
        "()Ljava/util/List;",
        "getOptionalShippingInfoFields",
        "getPaymentMethodTypes",
        "getPaymentMethodsFooterLayoutId",
        "getPrepopulatedShippingInfo",
        "()Lcom/stripe/android/model/ShippingInformation;",
        "getShippingInformationValidator$stripe_release",
        "()Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;",
        "getShippingMethodsFactory$stripe_release",
        "()Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;",
        "getShouldPrefetchCustomer$stripe_release",
        "getShouldShowGooglePay",
        "getWindowFlags$stripe_release",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component13$stripe_release",
        "component14",
        "component14$stripe_release",
        "component15",
        "component15$stripe_release",
        "component16",
        "component16$stripe_release",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;)Lcom/stripe/android/PaymentSessionConfig;",
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
        "DefaultShippingInfoValidator",
        "ShippingInformationValidator",
        "ShippingMethodsFactory",
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
            "Lcom/stripe/android/PaymentSessionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final Companion:Lcom/stripe/android/PaymentSessionConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_BILLING_ADDRESS_FIELDS:Lcom/stripe/android/view/BillingAddressFields;


# instance fields
.field private final addPaymentMethodFooterLayoutId:I

.field private final allowedShippingCountryCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final canDeletePaymentMethods:Z

.field private final hiddenShippingInfoFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isShippingInfoRequired:Z

.field private final isShippingMethodRequired:Z

.field private final optionalShippingInfoFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private final prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shouldPrefetchCustomer:Z

.field private final shouldShowGooglePay:Z

.field private final windowFlags:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/PaymentSessionConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/PaymentSessionConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/PaymentSessionConfig;->Companion:Lcom/stripe/android/PaymentSessionConfig$Companion;

    .line 318
    sget-object v0, Lcom/stripe/android/view/BillingAddressFields;->PostalCode:Lcom/stripe/android/view/BillingAddressFields;

    sput-object v0, Lcom/stripe/android/PaymentSessionConfig;->DEFAULT_BILLING_ADDRESS_FIELDS:Lcom/stripe/android/view/BillingAddressFields;

    new-instance v0, Lcom/stripe/android/PaymentSessionConfig$Creator;

    invoke-direct {v0}, Lcom/stripe/android/PaymentSessionConfig$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/PaymentSessionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xffff

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/stripe/android/PaymentSessionConfig;-><init>(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;)V
    .registers 26
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/stripe/android/view/BillingAddressFields;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;",
            "Lcom/stripe/android/model/ShippingInformation;",
            "ZZII",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/android/view/BillingAddressFields;",
            "ZZ",
            "Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;",
            "Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p14

    const-string v7, "hiddenShippingInfoFields"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "optionalShippingInfoFields"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "paymentMethodTypes"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "allowedShippingCountryCodes"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "billingAddressFields"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "shippingInformationValidator"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/stripe/android/PaymentSessionConfig;->hiddenShippingInfoFields:Ljava/util/List;

    iput-object v2, v0, Lcom/stripe/android/PaymentSessionConfig;->optionalShippingInfoFields:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lcom/stripe/android/PaymentSessionConfig;->prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;

    move v1, p4

    iput-boolean v1, v0, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    move v1, p6

    iput v1, v0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodsFooterLayoutId:I

    move/from16 v1, p7

    iput v1, v0, Lcom/stripe/android/PaymentSessionConfig;->addPaymentMethodFooterLayoutId:I

    iput-object v3, v0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodTypes:Ljava/util/List;

    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/stripe/android/PaymentSessionConfig;->shouldShowGooglePay:Z

    iput-object v4, v0, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    iput-object v5, v0, Lcom/stripe/android/PaymentSessionConfig;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    move/from16 v1, p12

    iput-boolean v1, v0, Lcom/stripe/android/PaymentSessionConfig;->canDeletePaymentMethods:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/stripe/android/PaymentSessionConfig;->shouldPrefetchCustomer:Z

    iput-object v6, v0, Lcom/stripe/android/PaymentSessionConfig;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/stripe/android/PaymentSessionConfig;->windowFlags:Ljava/lang/Integer;

    .line 52
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v2, v0, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    .line 322
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "countryCodes"

    .line 55
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_7c
    const/4 v7, 0x1

    if-ge v6, v4, :cond_8c

    aget-object v8, v1, v6

    .line 55
    invoke-static {v3, v8, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_89

    move v5, v7

    goto :goto_8c

    :cond_89
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    :cond_8c
    :goto_8c
    if-eqz v5, :cond_8f

    goto :goto_68

    .line 57
    :cond_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid country code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 61
    :cond_b1
    iget-boolean v1, v0, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    if-eqz v1, :cond_c8

    .line 62
    iget-object v1, v0, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    if-eqz v1, :cond_ba

    goto :goto_c8

    :cond_ba
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "If isShippingMethodRequired is true a ShippingMethodsFactory must also be provided."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_c8
    :goto_c8
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 36

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_b

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_d

    :cond_b
    move-object/from16 v1, p1

    :goto_d
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_16

    .line 27
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_18

    :cond_16
    move-object/from16 v2, p2

    :goto_18
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_21

    .line 28
    move-object v3, v4

    check-cast v3, Lcom/stripe/android/model/ShippingInformation;

    goto :goto_23

    :cond_21
    move-object/from16 v3, p3

    :goto_23
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_2a

    move v5, v6

    goto :goto_2c

    :cond_2a
    move/from16 v5, p4

    :goto_2c
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_32

    move v7, v6

    goto :goto_34

    :cond_32
    move/from16 v7, p5

    :goto_34
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_3a

    move v8, v6

    goto :goto_3c

    :cond_3a
    move/from16 v8, p6

    :goto_3c
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_42

    move v9, v6

    goto :goto_44

    :cond_42
    move/from16 v9, p7

    :goto_44
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_4f

    .line 40
    sget-object v10, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto :goto_51

    :cond_4f
    move-object/from16 v10, p8

    :goto_51
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_56

    goto :goto_58

    :cond_56
    move/from16 v6, p9

    :goto_58
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_61

    .line 42
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v11

    goto :goto_63

    :cond_61
    move-object/from16 v11, p10

    :goto_63
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_6a

    .line 43
    sget-object v12, Lcom/stripe/android/PaymentSessionConfig;->DEFAULT_BILLING_ADDRESS_FIELDS:Lcom/stripe/android/view/BillingAddressFields;

    goto :goto_6c

    :cond_6a
    move-object/from16 v12, p11

    :goto_6c
    and-int/lit16 v13, v0, 0x800

    const/4 v14, 0x1

    if-eqz v13, :cond_73

    move v13, v14

    goto :goto_75

    :cond_73
    move/from16 v13, p12

    :goto_75
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_7a

    goto :goto_7c

    :cond_7a
    move/from16 v14, p13

    :goto_7c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_88

    .line 47
    new-instance v15, Lcom/stripe/android/PaymentSessionConfig$DefaultShippingInfoValidator;

    invoke-direct {v15}, Lcom/stripe/android/PaymentSessionConfig$DefaultShippingInfoValidator;-><init>()V

    check-cast v15, Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    goto :goto_8a

    :cond_88
    move-object/from16 v15, p14

    :goto_8a
    move-object/from16 p18, v15

    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_94

    .line 48
    move-object v15, v4

    check-cast v15, Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    goto :goto_96

    :cond_94
    move-object/from16 v15, p15

    :goto_96
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_a1

    .line 49
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    goto :goto_a3

    :cond_a1
    move-object/from16 v0, p16

    :goto_a3
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v5

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v6

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move-object/from16 p15, p18

    move-object/from16 p16, v15

    move-object/from16 p17, v0

    invoke-direct/range {p1 .. p17}, Lcom/stripe/android/PaymentSessionConfig;-><init>(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$Companion()Lcom/stripe/android/PaymentSessionConfig$Companion;
    .registers 1

    sget-object v0, Lcom/stripe/android/PaymentSessionConfig;->Companion:Lcom/stripe/android/PaymentSessionConfig$Companion;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_BILLING_ADDRESS_FIELDS$cp()Lcom/stripe/android/view/BillingAddressFields;
    .registers 1

    .line 25
    sget-object v0, Lcom/stripe/android/PaymentSessionConfig;->DEFAULT_BILLING_ADDRESS_FIELDS:Lcom/stripe/android/view/BillingAddressFields;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/android/PaymentSessionConfig;Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/stripe/android/PaymentSessionConfig;
    .registers 36

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/stripe/android/PaymentSessionConfig;->hiddenShippingInfoFields:Ljava/util/List;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/stripe/android/PaymentSessionConfig;->optionalShippingInfoFields:Ljava/util/List;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/stripe/android/PaymentSessionConfig;->prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-boolean v5, v0, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired:Z

    goto :goto_28

    :cond_26
    move/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-boolean v6, v0, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    goto :goto_31

    :cond_2f
    move/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget v7, v0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodsFooterLayoutId:I

    goto :goto_3a

    :cond_38
    move/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget v8, v0, Lcom/stripe/android/PaymentSessionConfig;->addPaymentMethodFooterLayoutId:I

    goto :goto_43

    :cond_41
    move/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodTypes:Ljava/util/List;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-boolean v10, v0, Lcom/stripe/android/PaymentSessionConfig;->shouldShowGooglePay:Z

    goto :goto_55

    :cond_53
    move/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/stripe/android/PaymentSessionConfig;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-boolean v13, v0, Lcom/stripe/android/PaymentSessionConfig;->canDeletePaymentMethods:Z

    goto :goto_70

    :cond_6e
    move/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-boolean v14, v0, Lcom/stripe/android/PaymentSessionConfig;->shouldPrefetchCustomer:Z

    goto :goto_79

    :cond_77
    move/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-object v15, v0, Lcom/stripe/android/PaymentSessionConfig;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    goto :goto_82

    :cond_80
    move-object/from16 v15, p14

    :goto_82
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_97

    iget-object v1, v0, Lcom/stripe/android/PaymentSessionConfig;->windowFlags:Ljava/lang/Integer;

    goto :goto_99

    :cond_97
    move-object/from16 v1, p16

    :goto_99
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/stripe/android/PaymentSessionConfig;->copy(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;)Lcom/stripe/android/PaymentSessionConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->hiddenShippingInfoFields:Ljava/util/List;

    return-object v0
.end method

.method public final component10()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    return-object v0
.end method

.method public final component11()Lcom/stripe/android/view/BillingAddressFields;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    return-object v0
.end method

.method public final component12()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->canDeletePaymentMethods:Z

    return v0
.end method

.method public final component13$stripe_release()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldPrefetchCustomer:Z

    return v0
.end method

.method public final component14$stripe_release()Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    return-object v0
.end method

.method public final component15$stripe_release()Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    return-object v0
.end method

.method public final component16$stripe_release()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->windowFlags:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->optionalShippingInfoFields:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/stripe/android/model/ShippingInformation;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;

    return-object v0
.end method

.method public final component4()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired:Z

    return v0
.end method

.method public final component5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    return v0
.end method

.method public final component6()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodsFooterLayoutId:I

    return v0
.end method

.method public final component7()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/PaymentSessionConfig;->addPaymentMethodFooterLayoutId:I

    return v0
.end method

.method public final component8()Ljava/util/List;
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

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldShowGooglePay:Z

    return v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;)Lcom/stripe/android/PaymentSessionConfig;
    .registers 36
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/stripe/android/view/BillingAddressFields;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;",
            "Lcom/stripe/android/model/ShippingInformation;",
            "ZZII",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/android/view/BillingAddressFields;",
            "ZZ",
            "Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;",
            "Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/stripe/android/PaymentSessionConfig;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const-string v0, "hiddenShippingInfoFields"

    move-object/from16 v17, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalShippingInfoFields"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodTypes"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedShippingCountryCodes"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingAddressFields"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shippingInformationValidator"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Lcom/stripe/android/PaymentSessionConfig;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/stripe/android/PaymentSessionConfig;-><init>(Ljava/util/List;Ljava/util/List;Lcom/stripe/android/model/ShippingInformation;ZZIILjava/util/List;ZLjava/util/Set;Lcom/stripe/android/view/BillingAddressFields;ZZLcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;Ljava/lang/Integer;)V

    return-object v18
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

    if-eq p0, p1, :cond_8f

    instance-of v0, p1, Lcom/stripe/android/PaymentSessionConfig;

    if-eqz v0, :cond_8d

    check-cast p1, Lcom/stripe/android/PaymentSessionConfig;

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->hiddenShippingInfoFields:Ljava/util/List;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionConfig;->hiddenShippingInfoFields:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->optionalShippingInfoFields:Ljava/util/List;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionConfig;->optionalShippingInfoFields:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionConfig;->prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired:Z

    if-ne v0, v1, :cond_8d

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    if-ne v0, v1, :cond_8d

    iget v0, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodsFooterLayoutId:I

    iget v1, p1, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodsFooterLayoutId:I

    if-ne v0, v1, :cond_8d

    iget v0, p0, Lcom/stripe/android/PaymentSessionConfig;->addPaymentMethodFooterLayoutId:I

    iget v1, p1, Lcom/stripe/android/PaymentSessionConfig;->addPaymentMethodFooterLayoutId:I

    if-ne v0, v1, :cond_8d

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodTypes:Ljava/util/List;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodTypes:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldShowGooglePay:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentSessionConfig;->shouldShowGooglePay:Z

    if-ne v0, v1, :cond_8d

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionConfig;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->canDeletePaymentMethods:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentSessionConfig;->canDeletePaymentMethods:Z

    if-ne v0, v1, :cond_8d

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldPrefetchCustomer:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentSessionConfig;->shouldPrefetchCustomer:Z

    if-ne v0, v1, :cond_8d

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionConfig;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->windowFlags:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/stripe/android/PaymentSessionConfig;->windowFlags:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    goto :goto_8f

    :cond_8d
    const/4 p1, 0x0

    return p1

    :cond_8f
    :goto_8f
    const/4 p1, 0x1

    return p1
.end method

.method public final getAddPaymentMethodFooterLayoutId()I
    .registers 2
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 38
    iget v0, p0, Lcom/stripe/android/PaymentSessionConfig;->addPaymentMethodFooterLayoutId:I

    return v0
.end method

.method public final getAllowedShippingCountryCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    return-object v0
.end method

.method public final getBillingAddressFields()Lcom/stripe/android/view/BillingAddressFields;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    return-object v0
.end method

.method public final getCanDeletePaymentMethods()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->canDeletePaymentMethods:Z

    return v0
.end method

.method public final getHiddenShippingInfoFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->hiddenShippingInfoFields:Ljava/util/List;

    return-object v0
.end method

.method public final getOptionalShippingInfoFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->optionalShippingInfoFields:Ljava/util/List;

    return-object v0
.end method

.method public final getPaymentMethodTypes()Ljava/util/List;
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

    .line 40
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getPaymentMethodsFooterLayoutId()I
    .registers 2
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 34
    iget v0, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodsFooterLayoutId:I

    return v0
.end method

.method public final getPrepopulatedShippingInfo()Lcom/stripe/android/model/ShippingInformation;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;

    return-object v0
.end method

.method public final getShippingInformationValidator$stripe_release()Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    return-object v0
.end method

.method public final getShippingMethodsFactory$stripe_release()Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    return-object v0
.end method

.method public final getShouldPrefetchCustomer$stripe_release()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldPrefetchCustomer:Z

    return v0
.end method

.method public final getShouldShowGooglePay()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldShowGooglePay:Z

    return v0
.end method

.method public final getWindowFlags$stripe_release()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->windowFlags:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionConfig;->hiddenShippingInfoFields:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionConfig;->optionalShippingInfoFields:Ljava/util/List;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionConfig;->prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    move v2, v3

    :cond_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    if-eqz v2, :cond_35

    move v2, v3

    :cond_35
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodsFooterLayoutId:I

    invoke-static {v2}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/stripe/android/PaymentSessionConfig;->addPaymentMethodFooterLayoutId:I

    invoke-static {v2}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodTypes:Ljava/util/List;

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_54

    :cond_53
    move v2, v1

    :goto_54
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldShowGooglePay:Z

    if-eqz v2, :cond_5c

    move v2, v3

    :cond_5c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    if-eqz v2, :cond_68

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_69

    :cond_68
    move v2, v1

    :goto_69
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionConfig;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    if-eqz v2, :cond_75

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_76

    :cond_75
    move v2, v1

    :goto_76
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/PaymentSessionConfig;->canDeletePaymentMethods:Z

    if-eqz v2, :cond_7e

    move v2, v3

    :cond_7e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldPrefetchCustomer:Z

    if-eqz v2, :cond_86

    move v2, v3

    :cond_86
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    if-eqz v2, :cond_92

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_93

    :cond_92
    move v2, v1

    :goto_93
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a0

    :cond_9f
    move v2, v1

    :goto_a0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionConfig;->windowFlags:Ljava/lang/Integer;

    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_ab
    add-int/2addr v0, v1

    return v0
.end method

.method public final isShippingInfoRequired()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired:Z

    return v0
.end method

.method public final isShippingMethodRequired()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentSessionConfig(hiddenShippingInfoFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionConfig;->hiddenShippingInfoFields:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", optionalShippingInfoFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionConfig;->optionalShippingInfoFields:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prepopulatedShippingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionConfig;->prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShippingInfoRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShippingMethodRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethodsFooterLayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodsFooterLayoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", addPaymentMethodFooterLayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stripe/android/PaymentSessionConfig;->addPaymentMethodFooterLayoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethodTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowGooglePay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldShowGooglePay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowedShippingCountryCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", billingAddressFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionConfig;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canDeletePaymentMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentSessionConfig;->canDeletePaymentMethods:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldPrefetchCustomer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldPrefetchCustomer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shippingInformationValidator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingMethodsFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionConfig;->windowFlags:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/PaymentSessionConfig;->hiddenShippingInfoFields:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_12

    :cond_26
    iget-object p2, p0, Lcom/stripe/android/PaymentSessionConfig;->optionalShippingInfoFields:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_33

    :cond_47
    iget-object p2, p0, Lcom/stripe/android/PaymentSessionConfig;->prepopulatedShippingInfo:Lcom/stripe/android/model/ShippingInformation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_54

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_57

    :cond_54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_57
    iget-boolean p2, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodsFooterLayoutId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/stripe/android/PaymentSessionConfig;->addPaymentMethodFooterLayoutId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/stripe/android/PaymentSessionConfig;->paymentMethodTypes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_78
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_78

    :cond_8c
    iget-boolean p2, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldShowGooglePay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/stripe/android/PaymentSessionConfig;->allowedShippingCountryCodes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9e

    :cond_ae
    iget-object p2, p0, Lcom/stripe/android/PaymentSessionConfig;->billingAddressFields:Lcom/stripe/android/view/BillingAddressFields;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/stripe/android/PaymentSessionConfig;->canDeletePaymentMethods:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/stripe/android/PaymentSessionConfig;->shouldPrefetchCustomer:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingInformationValidator:Lcom/stripe/android/PaymentSessionConfig$ShippingInformationValidator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/stripe/android/PaymentSessionConfig;->shippingMethodsFactory:Lcom/stripe/android/PaymentSessionConfig$ShippingMethodsFactory;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/stripe/android/PaymentSessionConfig;->windowFlags:Ljava/lang/Integer;

    if-eqz p2, :cond_da

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_dd

    :cond_da
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_dd
    return-void
.end method
