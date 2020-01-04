#ifndef CARD_H
#define CARD_H

#include <QtSql>
#include <QtWidgets>

#include "config.h"

struct AbbItem
{
    AbbItem(QString abb, QString desc)
        : rx(QRegExp("(^|\\W)(" + QRegExp::escape(abb) + ")(\\W|$)")),
          desc(desc.replace("'", "′")) { }

    QRegExp rx;
    QString desc;
};

class Card : public QTextEdit
{
    Q_OBJECT

public:
    Card(Card*);
    Card(Config*, QSqlDatabase*);

public slots:
    void article(QString, QString = "");

private:
    void resizeEvent(QResizeEvent*);

    QString buildRec(QString, QList<QStringList>);
    QString buildList(QStringList);

    QSqlDatabase* db;
    Config*		  config;

    QMap<QString, QList<AbbItem>> abbs;
};

#endif // CARD_H
