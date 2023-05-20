.class public final enum Lio/noties/markwon/html/jsoup/parser/Token$TokenType;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/noties/markwon/html/jsoup/parser/Token$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

.field public static final enum Character:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

.field public static final enum Comment:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

.field public static final enum Doctype:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

.field public static final enum EOF:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

.field public static final enum EndTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

.field public static final enum StartTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 391
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    const/4 v1, 0x0

    const-string v2, "Doctype"

    invoke-direct {v0, v2, v1}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Doctype:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    .line 392
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    const/4 v2, 0x1

    const-string v3, "StartTag"

    invoke-direct {v0, v3, v2}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->StartTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    .line 393
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    const/4 v3, 0x2

    const-string v4, "EndTag"

    invoke-direct {v0, v4, v3}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->EndTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    .line 394
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    const/4 v4, 0x3

    const-string v5, "Comment"

    invoke-direct {v0, v5, v4}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Comment:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    .line 395
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    const/4 v5, 0x4

    const-string v6, "Character"

    invoke-direct {v0, v6, v5}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Character:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    .line 396
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    const/4 v6, 0x5

    const-string v7, "EOF"

    invoke-direct {v0, v7, v6}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->EOF:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    const/4 v0, 0x6

    .line 390
    new-array v0, v0, [Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    sget-object v7, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Doctype:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    aput-object v7, v0, v1

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->StartTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v2

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->EndTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Comment:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Character:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->EOF:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v6

    sput-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->$VALUES:[Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/noties/markwon/html/jsoup/parser/Token$TokenType;
    .registers 2

    .line 390
    const-class v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    return-object p0
.end method

.method public static values()[Lio/noties/markwon/html/jsoup/parser/Token$TokenType;
    .registers 1

    .line 390
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->$VALUES:[Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-virtual {v0}, [Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    return-object v0
.end method
