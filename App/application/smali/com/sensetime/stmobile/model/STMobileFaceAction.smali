.class public Lcom/sensetime/stmobile/model/STMobileFaceAction;
.super Ljava/lang/Object;
.source "STMobileFaceAction.java"


# instance fields
.field public face:Lcom/sensetime/stmobile/model/STMobile106;

.field public face_action:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFace()Lcom/sensetime/stmobile/model/STMobile106;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/sensetime/stmobile/model/STMobileFaceAction;->face:Lcom/sensetime/stmobile/model/STMobile106;

    return-object p0
.end method

.method public getFace_action()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/sensetime/stmobile/model/STMobileFaceAction;->face_action:I

    return p0
.end method

.method public setFace(Lcom/sensetime/stmobile/model/STMobile106;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/sensetime/stmobile/model/STMobileFaceAction;->face:Lcom/sensetime/stmobile/model/STMobile106;

    return-void
.end method

.method public setFace_action(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/sensetime/stmobile/model/STMobileFaceAction;->face_action:I

    return-void
.end method
