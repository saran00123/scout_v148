.class public final enum Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;
.super Ljava/lang/Enum;
.source "AccountManagerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/map/device/AccountManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOCALE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

.field public static final enum CA:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

.field public static final enum CN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

.field public static final enum DE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

.field public static final enum ES:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

.field public static final enum FR:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

.field public static final enum JP:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

.field private static final LOCALE_SEPERATOR:Ljava/lang/String; = "-"

.field public static final enum UK:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

.field public static final enum US:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;


# instance fields
.field private final mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 68
    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    const/4 v1, 0x0

    const-string v2, "US"

    const-string/jumbo v3, "us"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->US:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    const/4 v2, 0x1

    const-string v3, "DE"

    const-string v4, "de"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->DE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    const/4 v3, 0x2

    const-string v4, "UK"

    const-string/jumbo v5, "uk"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->UK:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    const/4 v4, 0x3

    const-string v5, "JP"

    const-string v6, "jp"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->JP:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    const/4 v5, 0x4

    const-string v6, "FR"

    const-string v7, "fr"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->FR:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    const/4 v6, 0x5

    const-string v7, "CA"

    const-string v8, "ca"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->CA:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    const/4 v7, 0x6

    const-string v8, "ES"

    const-string v9, "es"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->ES:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    const/4 v8, 0x7

    const-string v9, "CN"

    const-string v10, "cn"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->CN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    const/16 v0, 0x8

    .line 66
    new-array v0, v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    sget-object v9, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->US:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    aput-object v9, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->DE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->UK:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->JP:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->FR:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->CA:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->ES:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->CN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    aput-object v1, v0, v8

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;
    .registers 2

    .line 66
    const-class v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;
    .registers 1

    .line 66
    sget-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    return-object v0
.end method


# virtual methods
.method public toUrlString()Ljava/lang/String;
    .registers 3

    .line 81
    sget-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->US:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$LOCALE;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v0, ""

    return-object v0
.end method
