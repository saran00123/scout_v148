.class public final Lcom/stripe/android/model/Card;
.super Lcom/stripe/android/model/TokenParams;
.source "Card.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeModel;
.implements Lcom/stripe/android/model/StripePaymentSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/Card$Creator;,
        Lcom/stripe/android/model/Card$Builder;,
        Lcom/stripe/android/model/Card$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Card.kt\ncom/stripe/android/model/Card\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,615:1\n1#2:616\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\'\n\u0002\u0010\u0000\n\u0002\u0008\u001f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u0086\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u0085\u0001\u0086\u0001B\u00b9\u0002\u0008\u0000\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001f\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\u0016\u0008\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010#\u00a2\u0006\u0002\u0010$J\u000b\u0010M\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010S\u001a\u00020\u0015H\u00c6\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0014\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001fH\u00c0\u0003\u00a2\u0006\u0002\u0008]J\u000b\u0010^\u001a\u0004\u0018\u00010!H\u00c6\u0003J\u0017\u0010_\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010#H\u00c6\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u00108J\u0010\u0010a\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u00108J\u000b\u0010b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u00c8\u0002\u0010g\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0016\u0008\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010#H\u00c6\u0001\u00a2\u0006\u0002\u0010hJ\t\u0010i\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010j\u001a\u00020k2\u0008\u0010l\u001a\u0004\u0018\u00010KH\u00d6\u0003J\t\u0010m\u001a\u00020\u0008H\u00d6\u0001J\u0008\u0010n\u001a\u00020oH\u0007J\u0008\u0010p\u001a\u00020qH\u0007J\u0008\u0010r\u001a\u00020sH\u0007J\t\u0010t\u001a\u00020\u0005H\u00d6\u0001J\u0008\u0010u\u001a\u00020kH\u0007J\u0008\u0010v\u001a\u00020kH\u0007J\u0015\u0010v\u001a\u00020k2\u0006\u0010w\u001a\u00020xH\u0001\u00a2\u0006\u0002\u0008yJ\u0008\u0010z\u001a\u00020kH\u0007J\u0015\u0010{\u001a\u00020k2\u0006\u0010w\u001a\u00020xH\u0001\u00a2\u0006\u0002\u0008|J\u0008\u0010}\u001a\u00020kH\u0007J\u0015\u0010}\u001a\u00020k2\u0006\u0010w\u001a\u00020xH\u0001\u00a2\u0006\u0002\u0008~J\u0008\u0010\u007f\u001a\u00020kH\u0007J\u001e\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u0008H\u00d6\u0001R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010&R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010&R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010&R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010&R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010&R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010&R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010&R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010&R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010&R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00083\u00104\u001a\u0004\u00085\u0010&R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010&R\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0007\u00a2\u0006\n\n\u0002\u00109\u001a\u0004\u00087\u00108R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u00109\u001a\u0004\u0008:\u00108R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010&R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010&R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010&R\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010AR*\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010#8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008B\u00104\u001a\u0004\u0008C\u0010DR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010&R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008F\u00104\u001a\u0004\u0008G\u0010&R\u0013\u0010 \u001a\u0004\u0018\u00010!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010IR \u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020K0#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010D\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Lcom/stripe/android/model/Card;",
        "Lcom/stripe/android/model/StripeModel;",
        "Lcom/stripe/android/model/StripePaymentSource;",
        "Lcom/stripe/android/model/TokenParams;",
        "number",
        "",
        "cvc",
        "expMonth",
        "",
        "expYear",
        "name",
        "addressLine1",
        "addressLine1Check",
        "addressLine2",
        "addressCity",
        "addressState",
        "addressZip",
        "addressZipCheck",
        "addressCountry",
        "last4",
        "brand",
        "Lcom/stripe/android/model/CardBrand;",
        "funding",
        "Lcom/stripe/android/model/CardFunding;",
        "fingerprint",
        "country",
        "currency",
        "customerId",
        "cvcCheck",
        "id",
        "loggingTokens",
        "",
        "tokenizationMethod",
        "Lcom/stripe/android/model/TokenizationMethod;",
        "metadata",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;)V",
        "getAddressCity",
        "()Ljava/lang/String;",
        "getAddressCountry",
        "getAddressLine1",
        "getAddressLine1Check",
        "getAddressLine2",
        "getAddressState",
        "getAddressZip",
        "getAddressZipCheck",
        "getBrand",
        "()Lcom/stripe/android/model/CardBrand;",
        "getCountry",
        "getCurrency",
        "getCustomerId",
        "getCvc$annotations",
        "()V",
        "getCvc",
        "getCvcCheck",
        "getExpMonth",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getExpYear",
        "getFingerprint",
        "getFunding",
        "()Lcom/stripe/android/model/CardFunding;",
        "getId",
        "getLast4",
        "getLoggingTokens$stripe_release",
        "()Ljava/util/Set;",
        "getMetadata$annotations",
        "getMetadata",
        "()Ljava/util/Map;",
        "getName",
        "getNumber$annotations",
        "getNumber",
        "getTokenizationMethod",
        "()Lcom/stripe/android/model/TokenizationMethod;",
        "typeDataParams",
        "",
        "getTypeDataParams",
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
        "component22",
        "component23",
        "component23$stripe_release",
        "component24",
        "component25",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;)Lcom/stripe/android/model/Card;",
        "describeContents",
        "equals",
        "",
        "other",
        "hashCode",
        "toBuilder",
        "Lcom/stripe/android/model/Card$Builder;",
        "toPaymentMethodParamsCard",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Card;",
        "toPaymentMethodsParams",
        "Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "toString",
        "validateCVC",
        "validateCard",
        "now",
        "Ljava/util/Calendar;",
        "validateCard$stripe_release",
        "validateExpMonth",
        "validateExpYear",
        "validateExpYear$stripe_release",
        "validateExpiryDate",
        "validateExpiryDate$stripe_release",
        "validateNumber",
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
            "Lcom/stripe/android/model/Card;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/android/model/Card$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final addressCity:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final addressCountry:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final addressLine1:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final addressLine1Check:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final addressLine2:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final addressState:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final addressZip:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final addressZipCheck:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final brand:Lcom/stripe/android/model/CardBrand;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final country:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final currency:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final customerId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cvc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cvcCheck:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final expMonth:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final expYear:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fingerprint:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final funding:Lcom/stripe/android/model/CardFunding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final last4:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final loggingTokens:Ljava/util/Set;
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

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final number:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/model/Card$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/Card$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/Card;->Companion:Lcom/stripe/android/model/Card$Companion;

    new-instance v0, Lcom/stripe/android/model/Card$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/Card$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;)V
    .registers 30
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            value = 0x4L
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/stripe/android/model/CardBrand;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/stripe/android/model/CardFunding;
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
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p24    # Lcom/stripe/android/model/TokenizationMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/CardBrand;",
            "Lcom/stripe/android/model/CardFunding;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/android/model/TokenizationMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p15

    move-object/from16 v2, p23

    const-string v3, "brand"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "loggingTokens"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget-object v3, Lcom/stripe/android/model/Token$Type;->Card:Lcom/stripe/android/model/Token$Type;

    invoke-direct {p0, v3, v2}, Lcom/stripe/android/model/TokenParams;-><init>(Lcom/stripe/android/model/Token$Type;Ljava/util/Set;)V

    move-object v3, p1

    iput-object v3, v0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    move-object v3, p2

    iput-object v3, v0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    move-object v3, p3

    iput-object v3, v0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    move-object v3, p4

    iput-object v3, v0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    move-object v3, p5

    iput-object v3, v0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    move-object v3, p6

    iput-object v3, v0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    move-object v3, p7

    iput-object v3, v0, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    move-object v3, p8

    iput-object v3, v0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    move-object v3, p9

    iput-object v3, v0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    move-object v3, p10

    iput-object v3, v0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    move-object v3, p11

    iput-object v3, v0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/stripe/android/model/Card;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 57

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 21
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    goto :goto_e

    :cond_c
    move-object/from16 v4, p1

    :goto_e
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_17

    .line 27
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    goto :goto_19

    :cond_17
    move-object/from16 v5, p2

    :goto_19
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_22

    .line 49
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    goto :goto_24

    :cond_22
    move-object/from16 v8, p5

    :goto_24
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2d

    .line 56
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    goto :goto_2f

    :cond_2d
    move-object/from16 v9, p6

    :goto_2f
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_38

    .line 64
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    goto :goto_3a

    :cond_38
    move-object/from16 v10, p7

    :goto_3a
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_43

    .line 71
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v11, v1

    goto :goto_45

    :cond_43
    move-object/from16 v11, p8

    :goto_45
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4e

    .line 78
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    goto :goto_50

    :cond_4e
    move-object/from16 v12, p9

    :goto_50
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_59

    .line 85
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    goto :goto_5b

    :cond_59
    move-object/from16 v13, p10

    :goto_5b
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_64

    .line 92
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    goto :goto_66

    :cond_64
    move-object/from16 v14, p11

    :goto_66
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6f

    .line 100
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    goto :goto_71

    :cond_6f
    move-object/from16 v15, p12

    :goto_71
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7b

    .line 107
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v16, v1

    goto :goto_7d

    :cond_7b
    move-object/from16 v16, p13

    :goto_7d
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_87

    .line 115
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v17, v1

    goto :goto_89

    :cond_87
    move-object/from16 v17, p14

    :goto_89
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_95

    .line 129
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/CardFunding;

    move-object/from16 v19, v1

    goto :goto_97

    :cond_95
    move-object/from16 v19, p16

    :goto_97
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a2

    .line 139
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v20, v1

    goto :goto_a4

    :cond_a2
    move-object/from16 v20, p17

    :goto_a4
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_af

    .line 147
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v21, v1

    goto :goto_b1

    :cond_af
    move-object/from16 v21, p18

    :goto_b1
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_bc

    .line 156
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v22, v1

    goto :goto_be

    :cond_bc
    move-object/from16 v22, p19

    :goto_be
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c9

    .line 163
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v23, v1

    goto :goto_cb

    :cond_c9
    move-object/from16 v23, p20

    :goto_cb
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d6

    .line 171
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object/from16 v24, v1

    goto :goto_d8

    :cond_d6
    move-object/from16 v24, p21

    :goto_d8
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e4

    .line 180
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_e6

    :cond_e4
    move-object/from16 v26, p23

    :goto_e6
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f1

    .line 187
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/TokenizationMethod;

    move-object/from16 v27, v1

    goto :goto_f3

    :cond_f1
    move-object/from16 v27, p24

    :goto_f3
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_fe

    .line 198
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object/from16 v28, v0

    goto :goto_100

    :cond_fe
    move-object/from16 v28, p25

    :goto_100
    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v18, p15

    move-object/from16 v25, p22

    invoke-direct/range {v3 .. v28}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/android/model/Card;
    .registers 46

    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-object v5, v0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    goto :goto_28

    :cond_26
    move-object/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-object v13, v0, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    goto :goto_70

    :cond_6e
    move-object/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-object v14, v0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    goto :goto_79

    :cond_77
    move-object/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-object v15, v0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    goto :goto_82

    :cond_80
    move-object/from16 v15, p14

    :goto_82
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_99

    move-object/from16 p15, v15

    iget-object v15, v0, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    goto :goto_9d

    :cond_99
    move-object/from16 p15, v15

    move-object/from16 v15, p16

    :goto_9d
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_a8

    move-object/from16 p16, v15

    iget-object v15, v0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    goto :goto_ac

    :cond_a8
    move-object/from16 p16, v15

    move-object/from16 v15, p17

    :goto_ac
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    if-eqz v16, :cond_b7

    move-object/from16 p17, v15

    iget-object v15, v0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    goto :goto_bb

    :cond_b7
    move-object/from16 p17, v15

    move-object/from16 v15, p18

    :goto_bb
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    if-eqz v16, :cond_c6

    move-object/from16 p18, v15

    iget-object v15, v0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    goto :goto_ca

    :cond_c6
    move-object/from16 p18, v15

    move-object/from16 v15, p19

    :goto_ca
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    if-eqz v16, :cond_d5

    move-object/from16 p19, v15

    iget-object v15, v0, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    goto :goto_d9

    :cond_d5
    move-object/from16 p19, v15

    move-object/from16 v15, p20

    :goto_d9
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    if-eqz v16, :cond_e4

    move-object/from16 p20, v15

    iget-object v15, v0, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    goto :goto_e8

    :cond_e4
    move-object/from16 p20, v15

    move-object/from16 v15, p21

    :goto_e8
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    if-eqz v16, :cond_f3

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/Card;->getId()Ljava/lang/String;

    move-result-object v16

    goto :goto_f5

    :cond_f3
    move-object/from16 v16, p22

    :goto_f5
    const/high16 v17, 0x400000

    and-int v17, v1, v17

    if-eqz v17, :cond_100

    move-object/from16 p21, v15

    iget-object v15, v0, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    goto :goto_104

    :cond_100
    move-object/from16 p21, v15

    move-object/from16 v15, p23

    :goto_104
    const/high16 v17, 0x800000

    and-int v17, v1, v17

    if-eqz v17, :cond_10f

    move-object/from16 p23, v15

    iget-object v15, v0, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    goto :goto_113

    :cond_10f
    move-object/from16 p23, v15

    move-object/from16 v15, p24

    :goto_113
    const/high16 v17, 0x1000000

    and-int v1, v1, v17

    if-eqz v1, :cond_11c

    iget-object v1, v0, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    goto :goto_11e

    :cond_11c
    move-object/from16 v1, p25

    :goto_11e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p22, v16

    move-object/from16 p24, v15

    move-object/from16 p25, v1

    invoke-virtual/range {p0 .. p25}, Lcom/stripe/android/model/Card;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;)Lcom/stripe/android/model/Card;

    move-result-object v0

    return-object v0
.end method

.method public static final create(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/stripe/android/model/Card;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use CardParams"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Builder(number, expMonth, expYear, cvc).build()"
            imports = {
                "com.stripe.android.model.Card.Builder"
            }
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/Card;->Companion:Lcom/stripe/android/model/Card$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/android/model/Card$Companion;->create(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/stripe/android/model/Card;

    move-result-object p0

    return-object p0
.end method

.method public static final fromJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;
    .registers 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Will be removed in next major release."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/Card;->Companion:Lcom/stripe/android/model/Card$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/android/model/Card$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;

    move-result-object p0

    return-object p0
.end method

.method public static final fromString(Ljava/lang/String;)Lcom/stripe/android/model/Card;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Will be removed in next major release."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/stripe/android/model/Card;->Companion:Lcom/stripe/android/model/Card$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/android/model/Card$Companion;->fromString(Ljava/lang/String;)Lcom/stripe/android/model/Card;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCvc$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use CardParams"
    .end annotation

    return-void
.end method

.method public static synthetic getMetadata$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Metadata is no longer returned to clients using publishable keys. Retrieve them on your server using your secret key instead."
    .end annotation

    return-void
.end method

.method public static synthetic getNumber$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use CardParams"
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Lcom/stripe/android/model/CardBrand;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    return-object v0
.end method

.method public final component16()Lcom/stripe/android/model/CardFunding;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component23$stripe_release()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    return-object v0
.end method

.method public final component24()Lcom/stripe/android/model/TokenizationMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    return-object v0
.end method

.method public final component25()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;)Lcom/stripe/android/model/Card;
    .registers 53
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            value = 0x4L
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/stripe/android/model/CardBrand;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/stripe/android/model/CardFunding;
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
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p24    # Lcom/stripe/android/model/TokenizationMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/CardBrand;",
            "Lcom/stripe/android/model/CardFunding;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/android/model/TokenizationMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/android/model/Card;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    const-string v0, "brand"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggingTokens"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v26, Lcom/stripe/android/model/Card;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v25}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;)V

    return-object v26
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

    if-eq p0, p1, :cond_109

    instance-of v0, p1, Lcom/stripe/android/model/Card;

    if-eqz v0, :cond_107

    check-cast p1, Lcom/stripe/android/model/Card;

    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/model/Card;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    iget-object v1, p1, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_107

    goto :goto_109

    :cond_107
    const/4 p1, 0x0

    return p1

    :cond_109
    :goto_109
    const/4 p1, 0x1

    return p1
.end method

.method public final getAddressCity()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddressCountry()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddressLine1()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddressLine1Check()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddressLine2()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddressState()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddressZip()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddressZipCheck()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrand()Lcom/stripe/android/model/CardBrand;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomerId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCvc()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    return-object v0
.end method

.method public final getCvcCheck()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpMonth()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0xcL
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getExpYear()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFingerprint()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final getFunding()Lcom/stripe/android/model/CardFunding;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/stripe/android/model/Card;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLast4()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoggingTokens$stripe_release()Ljava/util/Set;
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

    .line 180
    iget-object v0, p0, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    return-object v0
.end method

.method public final getMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumber()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenizationMethod()Lcom/stripe/android/model/TokenizationMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    return-object v0
.end method

.method public getTypeDataParams()Ljava/util/Map;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 352
    new-instance v12, Lcom/stripe/android/model/CardParams;

    .line 353
    iget-object v1, v0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    if-eqz v1, :cond_9

    goto :goto_b

    :cond_9
    const-string v1, ""

    :goto_b
    move-object v2, v1

    .line 354
    iget-object v1, v0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v4, v1

    goto :goto_18

    :cond_17
    move v4, v3

    .line 355
    :goto_18
    iget-object v1, v0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v5, v1

    goto :goto_23

    :cond_22
    move v5, v3

    .line 356
    :goto_23
    iget-object v6, v0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    .line 357
    iget-object v7, v0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    .line 358
    iget-object v8, v0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    .line 359
    new-instance v9, Lcom/stripe/android/model/Address;

    .line 360
    iget-object v1, v0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    .line 361
    iget-object v3, v0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    .line 362
    iget-object v14, v0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    .line 363
    iget-object v10, v0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    .line 364
    iget-object v11, v0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    .line 365
    iget-object v15, v0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    move-object v13, v9

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    .line 359
    invoke-direct/range {v13 .. v19}, Lcom/stripe/android/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v13, 0x0

    move-object v1, v12

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v13

    .line 352
    invoke-direct/range {v1 .. v11}, Lcom/stripe/android/model/CardParams;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Address;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v12}, Lcom/stripe/android/model/CardParams;->getTypeDataParams()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_58

    :cond_57
    move v2, v1

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_65

    :cond_64
    move v2, v1

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_72

    :cond_71
    move v2, v1

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7f

    :cond_7e
    move v2, v1

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8c

    :cond_8b
    move v2, v1

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_99

    :cond_98
    move v2, v1

    :goto_99
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a6

    :cond_a5
    move v2, v1

    :goto_a6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    if-eqz v2, :cond_b2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b3

    :cond_b2
    move v2, v1

    :goto_b3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c0

    :cond_bf
    move v2, v1

    :goto_c0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    if-eqz v2, :cond_cc

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_cd

    :cond_cc
    move v2, v1

    :goto_cd
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    if-eqz v2, :cond_d9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_da

    :cond_d9
    move v2, v1

    :goto_da
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    if-eqz v2, :cond_e6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e7

    :cond_e6
    move v2, v1

    :goto_e7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    if-eqz v2, :cond_f3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f4

    :cond_f3
    move v2, v1

    :goto_f4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    if-eqz v2, :cond_100

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_101

    :cond_100
    move v2, v1

    :goto_101
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    if-eqz v2, :cond_10d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10e

    :cond_10d
    move v2, v1

    :goto_10e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11d

    :cond_11c
    move v2, v1

    :goto_11d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    if-eqz v2, :cond_129

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12a

    :cond_129
    move v2, v1

    :goto_12a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    if-eqz v2, :cond_136

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_137

    :cond_136
    move v2, v1

    :goto_137
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    if-eqz v2, :cond_142

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_142
    add-int/2addr v0, v1

    return v0
.end method

.method public final toBuilder()Lcom/stripe/android/model/Card$Builder;
    .registers 6
    .annotation runtime Lkotlin/Deprecated;
        message = "Use CardParams"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 237
    new-instance v0, Lcom/stripe/android/model/Card$Builder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/android/model/Card$Builder;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->name(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->addressLine1(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->addressLine1Check(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->addressLine2(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->addressCity(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->addressState(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->addressZip(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->addressZipCheck(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->addressCountry(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->brand(Lcom/stripe/android/model/CardBrand;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->fingerprint(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->funding(Lcom/stripe/android/model/CardFunding;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->country(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->currency(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->customer(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->cvcCheck(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->last4(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->id(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->tokenizationMethod(Lcom/stripe/android/model/TokenizationMethod;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->metadata(Ljava/util/Map;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->loggingTokens(Ljava/util/Set;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toPaymentMethodParamsCard()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;
    .registers 11
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PaymentMethodCreateParams#createCard()"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 224
    new-instance v9, Lcom/stripe/android/model/PaymentMethodCreateParams$Card;

    .line 225
    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    .line 226
    iget-object v4, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    .line 228
    iget-object v3, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v9

    .line 224
    invoke-direct/range {v0 .. v8}, Lcom/stripe/android/model/PaymentMethodCreateParams$Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public final toPaymentMethodsParams()Lcom/stripe/android/model/PaymentMethodCreateParams;
    .registers 19
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PaymentMethodCreateParams#createCard()"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 203
    sget-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams;->Companion:Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/model/Card;->toPaymentMethodParamsCard()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;

    move-result-object v2

    .line 205
    new-instance v10, Lcom/stripe/android/model/PaymentMethod$BillingDetails;

    .line 206
    iget-object v6, v0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    .line 207
    new-instance v4, Lcom/stripe/android/model/Address;

    .line 208
    iget-object v14, v0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    .line 209
    iget-object v15, v0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    .line 210
    iget-object v12, v0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    .line 211
    iget-object v3, v0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    .line 212
    iget-object v13, v0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    .line 213
    iget-object v5, v0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    move-object v11, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    .line 207
    invoke-direct/range {v11 .. v17}, Lcom/stripe/android/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-object v3, v10

    .line 205
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethod$BillingDetails;-><init>(Lcom/stripe/android/model/Address;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 203
    invoke-static/range {v1 .. v6}, Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;->create$default(Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;Lcom/stripe/android/model/PaymentMethodCreateParams$Card;Lcom/stripe/android/model/PaymentMethod$BillingDetails;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Card(number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cvc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressLine1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressLine1Check="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressLine2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressCity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressZip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressZipCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", last4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", funding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cvcCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loggingTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenizationMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final validateCVC()Z
    .registers 6
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle validation"
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    :goto_12
    if-eqz v0, :cond_15

    return v2

    .line 302
    :cond_15
    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    if-eqz v0, :cond_38

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v3, p0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    iget-object v4, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/stripe/android/model/CardBrand;->isValidCvc(Ljava/lang/String;)Z

    move-result v3

    .line 305
    sget-object v4, Lcom/stripe/android/model/ModelUtils;->INSTANCE:Lcom/stripe/android/model/ModelUtils;

    invoke-virtual {v4, v0}, Lcom/stripe/android/model/ModelUtils;->isWholePositiveNumber$stripe_release(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    return v1

    .line 302
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final validateCard()Z
    .registers 3
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle validation"
    .end annotation

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/stripe/android/model/Card;->validateCard$stripe_release(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public final validateCard$stripe_release(Ljava/util/Calendar;)Z
    .registers 5
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle validation"
    .end annotation

    const-string v0, "now"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 331
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0, p1}, Lcom/stripe/android/model/Card;->validateExpiryDate$stripe_release(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    .line 333
    :cond_18
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0, p1}, Lcom/stripe/android/model/Card;->validateExpiryDate$stripe_release(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateCVC()Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    return v1
.end method

.method public final validateExpMonth()Z
    .registers 5
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle validation"
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v3, 0xc

    if-le v2, v0, :cond_11

    goto :goto_15

    :cond_11
    if-lt v3, v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v1

    :goto_16
    if-ne v0, v2, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method public final validateExpYear$stripe_release(Ljava/util/Calendar;)Z
    .registers 5
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle validation"
    .end annotation

    const-string v0, "now"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v2, Lcom/stripe/android/model/ModelUtils;->INSTANCE:Lcom/stripe/android/model/ModelUtils;

    invoke-virtual {v2, v0, p1}, Lcom/stripe/android/model/ModelUtils;->hasYearPassed$stripe_release(ILjava/util/Calendar;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-ne p1, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public final validateExpiryDate()Z
    .registers 3
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle validation"
    .end annotation

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/stripe/android/model/Card;->validateExpiryDate$stripe_release(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public final validateExpiryDate$stripe_release(Ljava/util/Calendar;)Z
    .registers 6
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle validation"
    .end annotation

    const-string v0, "now"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 340
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateExpMonth()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_2f

    .line 344
    :cond_11
    iget-object v2, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    if-eqz v2, :cond_2f

    invoke-virtual {p0, p1}, Lcom/stripe/android/model/Card;->validateExpYear$stripe_release(Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_2f

    .line 347
    :cond_1c
    sget-object v2, Lcom/stripe/android/model/ModelUtils;->INSTANCE:Lcom/stripe/android/model/ModelUtils;

    iget-object v3, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0, p1}, Lcom/stripe/android/model/ModelUtils;->hasMonthPassed$stripe_release(IILjava/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    :goto_2f
    return v1
.end method

.method public final validateNumber()Z
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "CardInputWidget and CardMultilineWidget handle validation"
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/android/CardUtils;->isValidCardNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_20

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    :cond_20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object p2, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    if-eqz p2, :cond_32

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    :cond_32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_35
    iget-object p2, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->addressLine1Check:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->addressZipCheck:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->brand:Lcom/stripe/android/model/CardBrand;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->funding:Lcom/stripe/android/model/CardFunding;

    if-eqz p2, :cond_7f

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_82

    :cond_7f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_82
    iget-object p2, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->customerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->cvcCheck:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/Card;->loggingTokens:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_ad
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_ad

    :cond_bd
    iget-object p2, p0, Lcom/stripe/android/model/Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    if-eqz p2, :cond_cc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_cf

    :cond_cc
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_cf
    iget-object p2, p0, Lcom/stripe/android/model/Card;->metadata:Ljava/util/Map;

    if-eqz p2, :cond_102

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_e5

    :cond_102
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_105
    return-void
.end method
