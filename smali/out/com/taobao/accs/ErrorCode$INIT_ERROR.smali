.class public final enum Lcom/taobao/accs/ErrorCode$INIT_ERROR;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INIT_ERROR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/accs/ErrorCode$INIT_ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum APPKEY_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum APPRECEIVER_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum APPSECRET_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum CONN_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum NO_CONNECTTION:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum NO_NETWORK:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum REQ_TIME_OUT:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SERVER_APPKEY_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SERVER_DEVICEID_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SERVER_PACKAGENAME_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SERVER_TAIR_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SUCCESS:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum UNKNOWN_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 60
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/4 v1, 0x0

    const-string v2, "NO_NETWORK"

    invoke-direct {v0, v2, v1}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_NETWORK:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 61
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/4 v2, 0x1

    const-string v3, "APPKEY_NULL"

    invoke-direct {v0, v3, v2}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPKEY_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 62
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/4 v3, 0x2

    const-string v4, "APPSECRET_NULL"

    invoke-direct {v0, v4, v3}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPSECRET_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 63
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/4 v4, 0x3

    const-string v5, "APPRECEIVER_NULL"

    invoke-direct {v0, v5, v4}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPRECEIVER_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 64
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/4 v5, 0x4

    const-string v6, "REQ_TIME_OUT"

    invoke-direct {v0, v6, v5}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->REQ_TIME_OUT:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 65
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/4 v6, 0x5

    const-string v7, "CONN_INVALID"

    invoke-direct {v0, v7, v6}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->CONN_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 66
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/4 v7, 0x6

    const-string v8, "NO_CONNECTTION"

    invoke-direct {v0, v8, v7}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_CONNECTTION:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 67
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN_ERROR"

    invoke-direct {v0, v9, v8}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->UNKNOWN_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 68
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/16 v9, 0x8

    const-string v10, "SERVER_TAIR_ERROR"

    invoke-direct {v0, v10, v9}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_TAIR_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 69
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/16 v10, 0x9

    const-string v11, "SERVER_DEVICEID_INVALID"

    invoke-direct {v0, v11, v10}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_DEVICEID_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 70
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/16 v11, 0xa

    const-string v12, "SERVER_APPKEY_INVALID"

    invoke-direct {v0, v12, v11}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_APPKEY_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 71
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/16 v12, 0xb

    const-string v13, "SERVER_PACKAGENAME_INVALID"

    invoke-direct {v0, v13, v12}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_PACKAGENAME_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 72
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/16 v13, 0xc

    const-string v14, "SUCCESS"

    invoke-direct {v0, v14, v13}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SUCCESS:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const/16 v0, 0xd

    .line 59
    new-array v0, v0, [Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    sget-object v14, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_NETWORK:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v14, v0, v1

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPKEY_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPSECRET_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPRECEIVER_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->REQ_TIME_OUT:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->CONN_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_CONNECTTION:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->UNKNOWN_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v8

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_TAIR_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v9

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_DEVICEID_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v10

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_APPKEY_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v11

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_PACKAGENAME_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v12

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SUCCESS:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v13

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->$VALUES:[Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/ErrorCode$INIT_ERROR;
    .registers 2

    .line 59
    const-class v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    return-object p0
.end method

.method public static values()[Lcom/taobao/accs/ErrorCode$INIT_ERROR;
    .registers 1

    .line 59
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->$VALUES:[Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    invoke-virtual {v0}, [Lcom/taobao/accs/ErrorCode$INIT_ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method
