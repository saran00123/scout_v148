.class public final Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;
.super Lcom/stripe/android/model/AccountParams$BusinessTypeParams;
.source "AccountParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/AccountParams$BusinessTypeParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Company"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Creator;,
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;,
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Document;,
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Builder;,
        Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u001f\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 _2\u00020\u0001:\u0004^_`aB\u00ad\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0015J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010K\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010!J\u0010\u0010L\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010!J\u000b\u0010M\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u0010\u0010P\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010!J\u00b6\u0001\u0010Q\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00c6\u0001\u00a2\u0006\u0002\u0010RJ\t\u0010S\u001a\u00020TH\u00d6\u0001J\u0013\u0010U\u001a\u00020\u00082\u0008\u0010V\u001a\u0004\u0018\u000104H\u00d6\u0003J\t\u0010W\u001a\u00020TH\u00d6\u0001J\t\u0010X\u001a\u00020\u000bH\u00d6\u0001J\u0019\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020TH\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001b\"\u0004\u0008\u001f\u0010\u001dR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010$\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010$\u001a\u0004\u0008%\u0010!\"\u0004\u0008&\u0010#R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010(\"\u0004\u0008,\u0010*R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010(\"\u0004\u0008.\u0010*R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010$\u001a\u0004\u0008/\u0010!\"\u0004\u00080\u0010#R(\u00101\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010403028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u00106R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010(\"\u0004\u00088\u0010*R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010(\"\u0004\u0008:\u0010*R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010(\"\u0004\u0008<\u0010*R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010(\"\u0004\u0008>\u0010*R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010B\u00a8\u0006b"
    }
    d2 = {
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;",
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams;",
        "address",
        "Lcom/stripe/android/model/Address;",
        "addressKana",
        "Lcom/stripe/android/model/AddressJapanParams;",
        "addressKanji",
        "directorsProvided",
        "",
        "executivesProvided",
        "name",
        "",
        "nameKana",
        "nameKanji",
        "ownersProvided",
        "phone",
        "taxId",
        "taxIdRegistrar",
        "vatId",
        "verification",
        "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;",
        "(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)V",
        "getAddress",
        "()Lcom/stripe/android/model/Address;",
        "setAddress",
        "(Lcom/stripe/android/model/Address;)V",
        "getAddressKana",
        "()Lcom/stripe/android/model/AddressJapanParams;",
        "setAddressKana",
        "(Lcom/stripe/android/model/AddressJapanParams;)V",
        "getAddressKanji",
        "setAddressKanji",
        "getDirectorsProvided",
        "()Ljava/lang/Boolean;",
        "setDirectorsProvided",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getExecutivesProvided",
        "setExecutivesProvided",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getNameKana",
        "setNameKana",
        "getNameKanji",
        "setNameKanji",
        "getOwnersProvided",
        "setOwnersProvided",
        "paramsList",
        "",
        "Lkotlin/Pair;",
        "",
        "getParamsList",
        "()Ljava/util/List;",
        "getPhone",
        "setPhone",
        "getTaxId",
        "setTaxId",
        "getTaxIdRegistrar",
        "setTaxIdRegistrar",
        "getVatId",
        "setVatId",
        "getVerification",
        "()Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;",
        "setVerification",
        "(Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)V",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;",
        "describeContents",
        "",
        "equals",
        "other",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Builder",
        "Companion",
        "Document",
        "Verification",
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
            "Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;",
            ">;"
        }
    .end annotation
.end field

.field private static final Companion:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_ADDRESS:Ljava/lang/String; = "address"

.field private static final PARAM_ADDRESS_KANA:Ljava/lang/String; = "address_kana"

.field private static final PARAM_ADDRESS_KANJI:Ljava/lang/String; = "address_kanji"

.field private static final PARAM_DIRECTORS_PROVIDED:Ljava/lang/String; = "directors_provided"

.field private static final PARAM_EXECUTIVES_PROVIDED:Ljava/lang/String; = "executives_provided"

.field private static final PARAM_NAME:Ljava/lang/String; = "name"

.field private static final PARAM_NAME_KANA:Ljava/lang/String; = "name_kana"

.field private static final PARAM_NAME_KANJI:Ljava/lang/String; = "name_kanji"

.field private static final PARAM_OWNERS_PROVIDED:Ljava/lang/String; = "owners_provided"

.field private static final PARAM_PHONE:Ljava/lang/String; = "phone"

.field private static final PARAM_TAX_ID:Ljava/lang/String; = "tax_id"

.field private static final PARAM_TAX_ID_REGISTRAR:Ljava/lang/String; = "tax_id_registrar"

.field private static final PARAM_VAT_ID:Ljava/lang/String; = "vat_id"

.field private static final PARAM_VERIFICATION:Ljava/lang/String; = "verification"


# instance fields
.field private address:Lcom/stripe/android/model/Address;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private addressKana:Lcom/stripe/android/model/AddressJapanParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private addressKanji:Lcom/stripe/android/model/AddressJapanParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private directorsProvided:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private executivesProvided:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nameKana:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nameKanji:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ownersProvided:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taxId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taxIdRegistrar:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private vatId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->Companion:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Companion;

    new-instance v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 18

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

    const/16 v15, 0x3fff

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;-><init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)V
    .registers 18
    .param p1    # Lcom/stripe/android/model/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
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
    .param p9    # Ljava/lang/Boolean;
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
    .param p14    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 179
    sget-object v1, Lcom/stripe/android/model/AccountParams$BusinessType;->Company:Lcom/stripe/android/model/AccountParams$BusinessType;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams;-><init>(Lcom/stripe/android/model/AccountParams$BusinessType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    move-object v1, p2

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    move-object v1, p3

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    move-object v1, p4

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    move-object v1, p5

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    move-object v1, p6

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    move-object v1, p10

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 32

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 74
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/Address;

    goto :goto_d

    :cond_b
    move-object/from16 v1, p1

    :goto_d
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_15

    .line 81
    move-object v3, v2

    check-cast v3, Lcom/stripe/android/model/AddressJapanParams;

    goto :goto_17

    :cond_15
    move-object/from16 v3, p2

    :goto_17
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1f

    .line 88
    move-object v4, v2

    check-cast v4, Lcom/stripe/android/model/AddressJapanParams;

    goto :goto_21

    :cond_1f
    move-object/from16 v4, p3

    :goto_21
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_29

    .line 100
    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_2b

    :cond_29
    move-object/from16 v5, p4

    :goto_2b
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_33

    .line 110
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_35

    :cond_33
    move-object/from16 v6, p5

    :goto_35
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_3d

    .line 117
    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto :goto_3f

    :cond_3d
    move-object/from16 v7, p6

    :goto_3f
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_47

    .line 124
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    goto :goto_49

    :cond_47
    move-object/from16 v8, p7

    :goto_49
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_51

    .line 131
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto :goto_53

    :cond_51
    move-object/from16 v9, p8

    :goto_53
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_5d

    const/4 v10, 0x0

    .line 141
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_5f

    :cond_5d
    move-object/from16 v10, p9

    :goto_5f
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_67

    .line 148
    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    goto :goto_69

    :cond_67
    move-object/from16 v11, p10

    :goto_69
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_71

    .line 157
    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    goto :goto_73

    :cond_71
    move-object/from16 v12, p11

    :goto_73
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_7b

    .line 164
    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    goto :goto_7d

    :cond_7b
    move-object/from16 v13, p12

    :goto_7d
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_85

    .line 171
    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    goto :goto_87

    :cond_85
    move-object/from16 v14, p13

    :goto_87
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8f

    .line 178
    move-object v0, v2

    check-cast v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    goto :goto_91

    :cond_8f
    move-object/from16 v0, p14

    :goto_91
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v0

    invoke-direct/range {p1 .. p15}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;-><init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;ILjava/lang/Object;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;
    .registers 32

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    goto :goto_c

    :cond_a
    move-object/from16 v2, p1

    :goto_c
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    goto :goto_15

    :cond_13
    move-object/from16 v3, p2

    :goto_15
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    goto :goto_1e

    :cond_1c
    move-object/from16 v4, p3

    :goto_1e
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_25

    iget-object v5, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    goto :goto_27

    :cond_25
    move-object/from16 v5, p4

    :goto_27
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2e

    iget-object v6, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    goto :goto_30

    :cond_2e
    move-object/from16 v6, p5

    :goto_30
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_37

    iget-object v7, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    goto :goto_39

    :cond_37
    move-object/from16 v7, p6

    :goto_39
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_40

    iget-object v8, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    goto :goto_42

    :cond_40
    move-object/from16 v8, p7

    :goto_42
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_49

    iget-object v9, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    goto :goto_4b

    :cond_49
    move-object/from16 v9, p8

    :goto_4b
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_52

    iget-object v10, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    goto :goto_54

    :cond_52
    move-object/from16 v10, p9

    :goto_54
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5b

    iget-object v11, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    goto :goto_5d

    :cond_5b
    move-object/from16 v11, p10

    :goto_5d
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_64

    iget-object v12, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    goto :goto_66

    :cond_64
    move-object/from16 v12, p11

    :goto_66
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6d

    iget-object v13, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    goto :goto_6f

    :cond_6d
    move-object/from16 v13, p12

    :goto_6f
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_76

    iget-object v14, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    goto :goto_78

    :cond_76
    move-object/from16 v14, p13

    :goto_78
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_7f

    iget-object v1, v0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    goto :goto_81

    :cond_7f
    move-object/from16 v1, p14

    :goto_81
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

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->copy(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/stripe/android/model/Address;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    return-object v0
.end method

.method public final component2()Lcom/stripe/android/model/AddressJapanParams;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final component3()Lcom/stripe/android/model/AddressJapanParams;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component5()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;
    .registers 31
    .param p1    # Lcom/stripe/android/model/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
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
    .param p9    # Ljava/lang/Boolean;
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
    .param p14    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v15, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;

    move-object v0, v15

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

    invoke-direct/range {v0 .. v14}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;-><init>(Lcom/stripe/android/model/Address;Lcom/stripe/android/model/AddressJapanParams;Lcom/stripe/android/model/AddressJapanParams;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)V

    return-object v15
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

    if-eq p0, p1, :cond_97

    instance-of v0, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;

    if-eqz v0, :cond_95

    check-cast p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    iget-object p1, p1, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    goto :goto_97

    :cond_95
    const/4 p1, 0x0

    return p1

    :cond_97
    :goto_97
    const/4 p1, 0x1

    return p1
.end method

.method public final getAddress()Lcom/stripe/android/model/Address;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    return-object v0
.end method

.method public final getAddressKana()Lcom/stripe/android/model/AddressJapanParams;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final getAddressKanji()Lcom/stripe/android/model/AddressJapanParams;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    return-object v0
.end method

.method public final getDirectorsProvided()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getExecutivesProvided()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameKana()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameKanji()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwnersProvided()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getParamsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0xe

    .line 182
    new-array v0, v0, [Lkotlin/Pair;

    .line 183
    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/stripe/android/model/Address;->toParamMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_f

    :cond_e
    move-object v1, v2

    :goto_f
    const-string v3, "address"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 184
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lcom/stripe/android/model/AddressJapanParams;->toParamMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_23

    :cond_22
    move-object v3, v2

    :goto_23
    const-string v4, "address_kana"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 185
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Lcom/stripe/android/model/AddressJapanParams;->toParamMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_36

    :cond_35
    move-object v3, v2

    :goto_36
    const-string v4, "address_kanji"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 186
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    const-string v4, "directors_provided"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 187
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    const-string v4, "executives_provided"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 188
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    const-string v4, "name"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 189
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    const-string v4, "name_kana"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 190
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    const-string v4, "name_kanji"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 191
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    const-string v4, "owners_provided"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x9

    .line 192
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    const-string v4, "phone"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 193
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    const-string v4, "tax_id"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xb

    .line 194
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    const-string v4, "tax_id_registrar"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xc

    .line 195
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    const-string v4, "vat_id"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xd

    .line 196
    iget-object v3, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;->toParamMap()Ljava/util/Map;

    move-result-object v2

    :cond_bb
    const-string v3, "verification"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getTaxId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTaxIdRegistrar()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    return-object v0
.end method

.method public final getVatId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerification()Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_58

    :cond_57
    move v2, v1

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_65

    :cond_64
    move v2, v1

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_72

    :cond_71
    move v2, v1

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7f

    :cond_7e
    move v2, v1

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8c

    :cond_8b
    move v2, v1

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_99

    :cond_98
    move v2, v1

    :goto_99
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a6

    :cond_a5
    move v2, v1

    :goto_a6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    if-eqz v2, :cond_b1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_b1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAddress(Lcom/stripe/android/model/Address;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 74
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    return-void
.end method

.method public final setAddressKana(Lcom/stripe/android/model/AddressJapanParams;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 81
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    return-void
.end method

.method public final setAddressKanji(Lcom/stripe/android/model/AddressJapanParams;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/AddressJapanParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 88
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    return-void
.end method

.method public final setDirectorsProvided(Ljava/lang/Boolean;)V
    .registers 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 100
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    return-void
.end method

.method public final setExecutivesProvided(Ljava/lang/Boolean;)V
    .registers 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 110
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 117
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNameKana(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 124
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    return-void
.end method

.method public final setNameKanji(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 131
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    return-void
.end method

.method public final setOwnersProvided(Ljava/lang/Boolean;)V
    .registers 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 141
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 148
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setTaxId(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 157
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    return-void
.end method

.method public final setTaxIdRegistrar(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 164
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    return-void
.end method

.method public final setVatId(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 171
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    return-void
.end method

.method public final setVerification(Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 178
    iput-object p1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Company(address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addressKana="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addressKanji="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", directorsProvided="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", executivesProvided="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nameKana="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nameKanji="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ownersProvided="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taxIdRegistrar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->address:Lcom/stripe/android/model/Address;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    :cond_12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKana:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz p2, :cond_20

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->addressKanji:Lcom/stripe/android/model/AddressJapanParams;

    if-eqz p2, :cond_2e

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    :cond_2e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_31
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->directorsProvided:Ljava/lang/Boolean;

    if-eqz p2, :cond_40

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_43

    :cond_40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_43
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->executivesProvided:Ljava/lang/Boolean;

    if-eqz p2, :cond_52

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    :cond_52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_55
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKana:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->nameKanji:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->ownersProvided:Ljava/lang/Boolean;

    if-eqz p2, :cond_73

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_76

    :cond_73
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_76
    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->taxIdRegistrar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->vatId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company;->verification:Lcom/stripe/android/model/AccountParams$BusinessTypeParams$Company$Verification;

    if-eqz p2, :cond_95

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_98

    :cond_95
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_98
    return-void
.end method
