.class public final enum Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/base/TaoBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtHeaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_NEED_BUSINESS_ACK:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_UNIT:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

.field public static final enum TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 26
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/4 v1, 0x0

    const-string v2, "TYPE_BUSINESS"

    invoke-direct {v0, v2, v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 27
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/4 v2, 0x1

    const-string v3, "TYPE_SID"

    invoke-direct {v0, v3, v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 28
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/4 v3, 0x2

    const-string v4, "TYPE_USERID"

    invoke-direct {v0, v4, v3}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 29
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/4 v4, 0x3

    const-string v5, "TYPE_COOKIE"

    invoke-direct {v0, v5, v4}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 30
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/4 v5, 0x4

    const-string v6, "TYPE_TAG"

    invoke-direct {v0, v6, v5}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 31
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/4 v6, 0x5

    const-string v7, "TYPE_STATUS"

    invoke-direct {v0, v7, v6}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 32
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/4 v7, 0x6

    const-string v8, "TYPE_DELAY"

    invoke-direct {v0, v8, v7}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 33
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/4 v8, 0x7

    const-string v9, "TYPE_EXPIRE"

    invoke-direct {v0, v9, v8}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 34
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/16 v9, 0x8

    const-string v10, "TYPE_LOCATION"

    invoke-direct {v0, v10, v9}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 35
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/16 v10, 0x9

    const-string v11, "TYPE_UNIT"

    invoke-direct {v0, v11, v10}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_UNIT:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 36
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/16 v11, 0xa

    const-string v12, "TYPE_NEED_BUSINESS_ACK"

    invoke-direct {v0, v12, v11}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_NEED_BUSINESS_ACK:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    const/16 v0, 0xb

    .line 25
    new-array v0, v0, [Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    sget-object v12, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v12, v0, v1

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_UNIT:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_NEED_BUSINESS_ACK:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->$VALUES:[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .registers 1

    packed-switch p0, :pswitch_data_26

    const/4 p0, 0x0

    return-object p0

    .line 61
    :pswitch_5
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_NEED_BUSINESS_ACK:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 59
    :pswitch_8
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_UNIT:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 57
    :pswitch_b
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 55
    :pswitch_e
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 53
    :pswitch_11
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 51
    :pswitch_14
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 49
    :pswitch_17
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 47
    :pswitch_1a
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 45
    :pswitch_1d
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 43
    :pswitch_20
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    .line 41
    :pswitch_23
    sget-object p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .registers 2

    .line 25
    const-class v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .registers 1

    .line 25
    sget-object v0, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->$VALUES:[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v0}, [Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    return-object v0
.end method
