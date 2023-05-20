.class public final enum Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;
.super Ljava/lang/Enum;
.source "ShippingInfoWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/ShippingInfoWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomizableShippingField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;",
        "",
        "(Ljava/lang/String;I)V",
        "Line1",
        "Line2",
        "City",
        "PostalCode",
        "State",
        "Phone",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

.field public static final enum City:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

.field public static final enum Line1:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

.field public static final enum Line2:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

.field public static final enum Phone:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

.field public static final enum PostalCode:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

.field public static final enum State:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    new-instance v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    const/4 v2, 0x0

    const-string v3, "Line1"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Line1:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    const/4 v2, 0x1

    const-string v3, "Line2"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Line2:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    const/4 v2, 0x2

    const-string v3, "City"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->City:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    const/4 v2, 0x3

    const-string v3, "PostalCode"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->PostalCode:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    const/4 v2, 0x4

    const-string v3, "State"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->State:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    const/4 v2, 0x5

    const-string v3, "Phone"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->Phone:Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->$VALUES:[Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;
    .registers 2

    const-class v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;
    .registers 1

    sget-object v0, Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->$VALUES:[Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    invoke-virtual {v0}, [Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/view/ShippingInfoWidget$CustomizableShippingField;

    return-object v0
.end method
