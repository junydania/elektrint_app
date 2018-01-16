jQuery(document).on 'turbolinks:load', ->
  competences = $('#competences')

  competences.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  competences.on 'cocoon:after-insert', (e, added_el) ->
    added_el.effect('highlight', {}, 500)

  competences.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)

  jQuery(document).on 'turbolinks:load', ->
    competences = $('#competences')
    count = competences.find('.count > span')
    recount = -> count.text competences.find('.nested-fields').size()

    competences.on 'cocoon:after-remove', (e, removed_el) ->
    recount()
