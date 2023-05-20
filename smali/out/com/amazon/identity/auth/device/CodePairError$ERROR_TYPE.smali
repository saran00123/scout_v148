.class public final enum Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;
.super Ljava/lang/Enum;
.source "CodePairError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/CodePairError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERROR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_BAD_API_PARAM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_BAD_PARAM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_COM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_INIT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_INVALID_API:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_INVALID_CLIENT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_INVALID_GRANT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_INVALID_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_INVALID_SCOPE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_IO:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_JSON:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_PARSE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_REGISTRATION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_RESOURCES:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_SECURITY:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_UNAUTHORIZED_CLIENT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_UNKNOWN:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

.field public static final enum ERROR_WEBVIEW_SSL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;


# instance fields
.field private final _category:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

.field private final _value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 40
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v2, 0x1

    const-string v3, "ERROR_INVALID_REQUEST"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 41
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v3, 0x2

    const-string v4, "ERROR_INVALID_GRANT"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_GRANT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 42
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v4, 0x3

    const-string v5, "ERROR_INVALID_CLIENT"

    invoke-direct {v0, v5, v3, v1, v4}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_CLIENT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 43
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v5, 0x4

    const-string v6, "ERROR_INVALID_SCOPE"

    invoke-direct {v0, v6, v4, v1, v5}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_SCOPE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 44
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v6, 0x5

    const-string v7, "ERROR_UNAUTHORIZED_CLIENT"

    invoke-direct {v0, v7, v5, v1, v6}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_UNAUTHORIZED_CLIENT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 45
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v7, 0x6

    const-string v8, "ERROR_WEBVIEW_SSL"

    invoke-direct {v0, v8, v6, v1, v7}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_WEBVIEW_SSL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v8, 0x7

    const-string v9, "ERROR_ACCESS_DENIED"

    invoke-direct {v0, v9, v7, v1, v8}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 47
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->NETWORK:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/16 v9, 0x8

    const-string v10, "ERROR_COM"

    invoke-direct {v0, v10, v8, v1, v9}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_COM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 48
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->NETWORK:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/16 v10, 0x9

    const-string v11, "ERROR_IO"

    invoke-direct {v0, v11, v9, v1, v10}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_IO:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 49
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->INTERNAL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/16 v11, 0xa

    const-string v12, "ERROR_BAD_PARAM"

    invoke-direct {v0, v12, v10, v1, v11}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_BAD_PARAM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->INTERNAL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/16 v12, 0xb

    const-string v13, "ERROR_JSON"

    invoke-direct {v0, v13, v11, v1, v12}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 51
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->INTERNAL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/16 v13, 0xc

    const-string v14, "ERROR_PARSE"

    invoke-direct {v0, v14, v12, v1, v13}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_PARSE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 52
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->INTERNAL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/16 v14, 0xd

    const-string v15, "ERROR_SERVER_REPSONSE"

    invoke-direct {v0, v15, v13, v1, v14}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 53
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->INTERNAL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/16 v15, 0xe

    const-string v13, "ERROR_DATA_STORAGE"

    invoke-direct {v0, v13, v14, v1, v15}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 54
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->BAD_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/16 v13, 0xf

    const-string v14, "ERROR_BAD_API_PARAM"

    invoke-direct {v0, v14, v15, v1, v13}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_BAD_API_PARAM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 55
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->BAD_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const-string v14, "ERROR_INIT"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v13, v1, v15}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INIT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 56
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->BAD_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const-string v14, "ERROR_RESOURCES"

    const/16 v13, 0x11

    invoke-direct {v0, v14, v15, v1, v13}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_RESOURCES:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 57
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->BAD_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const-string v13, "ERROR_INVALID_API"

    const/16 v14, 0x11

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v1, v15}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_API:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 58
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->BAD_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const-string v13, "ERROR_SECURITY"

    const/16 v14, 0x12

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v1, v15}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_SECURITY:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 59
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->UNKNOWN:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const-string v13, "ERROR_UNKNOWN"

    const/16 v14, 0x13

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v1, v15}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_UNKNOWN:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    .line 60
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const-string v13, "ERROR_REGISTRATION"

    const/16 v14, 0x14

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v1, v15}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_REGISTRATION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v0, 0x15

    .line 39
    new-array v0, v0, [Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/4 v13, 0x0

    aput-object v1, v0, v13

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_GRANT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_CLIENT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_SCOPE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_UNAUTHORIZED_CLIENT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_WEBVIEW_SSL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_COM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_IO:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_BAD_PARAM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_PARSE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_BAD_API_PARAM:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INIT:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_RESOURCES:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_INVALID_API:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_SECURITY:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_UNKNOWN:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->ERROR_REGISTRATION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->$VALUES:[Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;",
            "I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->_category:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    .line 67
    iput p4, p0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;
    .registers 2

    .line 39
    const-class v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;
    .registers 1

    .line 39
    sget-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->$VALUES:[Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->_category:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_TYPE;->_value:I

    return v0
.end method
