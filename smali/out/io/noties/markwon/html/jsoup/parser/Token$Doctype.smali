.class public final Lio/noties/markwon/html/jsoup/parser/Token$Doctype;
.super Lio/noties/markwon/html/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Doctype"
.end annotation


# instance fields
.field forceQuirks:Z

.field final name:Ljava/lang/StringBuilder;

.field pubSysKey:Ljava/lang/String;

.field final publicIdentifier:Ljava/lang/StringBuilder;

.field final systemIdentifier:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 45
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->Doctype:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    invoke-direct {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Token;-><init>(Lio/noties/markwon/html/jsoup/parser/Token$TokenType;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPubSysKey()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    return-object v0
.end method

.method getPublicIdentifier()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIdentifier()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isForceQuirks()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return v0
.end method

.method public reset()Lio/noties/markwon/html/jsoup/parser/Token;
    .registers 2

    .line 50
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->reset(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->reset(Ljava/lang/StringBuilder;)V

    .line 53
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->reset(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return-object p0
.end method
