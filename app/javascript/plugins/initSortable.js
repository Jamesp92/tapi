import Sortable from 'sortablejs';

const initKegsSortable = (ulElements) => {
  ulElements.forEach((ul) => {
    new Sortable(ul, {
        group: 'kegs', // set both lists to same group
        animation: 300
    });
  });
};

export default initKegsSortable;