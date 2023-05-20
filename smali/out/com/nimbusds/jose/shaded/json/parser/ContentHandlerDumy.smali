.class public Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;
.super Ljava/lang/Object;
.source "ContentHandlerDumy.java"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;


# static fields
.field public static HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endArray()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public endJSON()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    return-void
.end method

.method public endObject()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public endObjectEntry()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public primitive(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public startArray()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public startJSON()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    return-void
.end method

.method public startObject()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public startObjectEntry(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
